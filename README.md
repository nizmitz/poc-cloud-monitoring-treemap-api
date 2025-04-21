# poc-cloud-monitoring-treemap-api

Currently in GCP specifically in the `monitoring.googleapis.com` it is missing the necessary resource to create `TreeMap`

To prove the missing api this repo will try to create resource using both gcloud and terraform which both will call on the `monitoring.googleapis.com` at the backend

This repo will contain 2 similar but not identical JSON that is used to create dashboard, with caveat one will contain treemap widget while the other one doesn't



## Using Terraform

how to use the terraform configuration

```
terraform plan -out plan.tfplan -var project="insert-your-project"
terraform apply 'plan.tfplan'
```

you can also add in `TF_LOG=DEBUG` in front of the terraform apply, if you need to see the api calls

## Using Gcloud SDK

how to use 

```
# to test for the not working one
gcloud monitoring dashboards create --config-from-file="not-working.json"

# to test for the working one
gcloud monitoring dashboards create --config-from-file="working.json"
```

you can also add in `--verbosity=debug` if you need to see the api calls



## Reference
* https://cloud.google.com/monitoring/api/ref_v3/rest
* https://cloud.google.com/monitoring/dashboards/api-dashboard