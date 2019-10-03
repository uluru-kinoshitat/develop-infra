module "s3_distribution_thumbnail" {
  source = "../../modules/cloudfront"

  environment         = var.environment
  service_name        = var.service_name
  short_env           = var.short_env
  origin_id           = "S3-kurapuri-dev/thumbnail"
  origin_path         = "/thumbnail"
  domin_aliases       = "dev-image"
  bucket_domain_name  = "kurapuri-dev.s3.amazonaws.com"
  access_identity     = "E3OIC1NJRUT25W"
}
