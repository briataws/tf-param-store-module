terraform {
  backend "s3" {
    bucket = "terraform-state-169889227629"
    key    = "param-store-test/param-store"
  }
}
