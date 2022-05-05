terraform {
  backend "s3" {
    bucket = "ta-challenge-elk-team-3"
    key    = "challenge-week/syslog-server/terraform.tfstates"
    #dynamodb_table = "terraform-lock"
  }
}