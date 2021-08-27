terraform {
  backend "s3" {
      bucket = "devops019-terraformstatefile"
      key = "devops019_venu.prac"
      region = "ca-central-1"
  }
}