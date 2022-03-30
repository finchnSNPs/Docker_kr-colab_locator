# Docker_kr-colab_locator
Docker container for locator NN. See: https://github.com/kr-colab/locator.git

## Use with Docker
Download the Dockerfile

(you should also download Docker Desktop)

Create an image with the Dockerfile. Open terminal (or similar) and run the following:

`docker build -t locator .`

You must be inside of the directory containing the Dockerfile for this to work. 

See image in you Docker Desktop app. 

![Screen Shot 2022-03-29 at 3 18 12 PM](https://user-images.githubusercontent.com/22206944/160716431-5c21b5d0-b18a-4d4b-b0ea-6faab418c68e.png)

Click the RUN! button on the right side; name the container (optional). 

![Screen Shot 2022-03-29 at 3 18 43 PM](https://user-images.githubusercontent.com/22206944/160716503-770cc368-7cc3-41ee-aa02-1d243d07e7ec.png)

Click the >_ button which will open the container in terminal. 

Find the scripts directory. 

`ls scripts`

## Use with Singularity (Apptainer)

Download docker image to be run with singluarity.

Load module first if necessary.
`module load singularity`

`singularity pull locator.sif docker://finchnsnps/locator:locator_v2`

Open container as a shell with singularity.

`singularity shell --cleanenv locator.sif`

Find locator scripts directory under /

`ls /locator/scripts`

## Test container

See https://github.com/kr-colab/locator.git for details about test data, output files, parameters, visualization, and interpretation. 

Make output directory

`mkdir out/test`

Use test data to test the container

In docker: 

`python scripts/locator.py --vcf data/test_genotypes.vcf.gz --sample_data data/test_sample_data.txt --out out/test/test`

In singularity 

`python /locator/scripts/locator.py --vcf /locator/data/test_genotypes.vcf.gz --sample_data /locator/data/test_sample_data.txt --out out/test/test`
