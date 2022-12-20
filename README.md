# reusable-workflows

[GitHub Actions reusable workflows](https://docs.github.com/en/actions/using-workflows/reusing-workflow)

## Getting started

[Calling a reusable workflow](https://docs.github.com/en/actions/using-workflows/reusing-workflows#calling-a-reusable-workflow)

## Concepts

AWS Elastic Beanstalk
GitHub Actions

## Outputs

AWS Beanstalk environment

## What happens

- initialize awscli environment on linux
- install ebcli using action
- eb init
- check if environment already exists
- if not, create it
- eb deploy

## Troubleshooting

You will see logs and errors in the GitHub Actions tab.

[AWS Beanstalk console](https://console.aws.amazon.com/elasticbeanstalk/)

## TODO:

- [ ] enable codecommit sync
- [ ] enable environment tier worker vs web
- [ ] handle repo names with characters that dont work for env names
