terraform {
  backend "s3" {
      bucket = "devops019-terraformstatefile"
      key = "devops019_venu"
      region = "ca-central-1"
      access_key = ""
      secret_key = ""
  }
}