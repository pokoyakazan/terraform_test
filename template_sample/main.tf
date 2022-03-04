locals {
  sample_data = templatefile("memo.tmpl", {data="fuga"})
}

output "output_sample_data" {
  value = local.sample_data
}
