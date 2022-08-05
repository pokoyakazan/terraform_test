locals {
  sample_list = [
     "hello",
     "world",
     "kazan"
  ]
  
  sample_map = {
    for i, l in local.sample_list:
      i => l
  }

  sample_map_upper = {
    for k, v in local.sample_map:
      k => upper(v)
  }

  wokloads_config_map = {
      scheduler = {
        count      = 2
        cpu        = 2
        memory_gb  = 7.5
        storage_gb = 5
      }

      web_server = {
        cpu        = 2
        memory_gb  = 7.5
        storage_gb = 5
      }

      worker = {
        cpu        = 2
        max_count  = 6
        memory_gb  = 7.5
        min_count  = 2
        storage_gb = 5
      }
  }
}

output "output_sample_list" {
  value = local.sample_list
}

output "output_sample_map" {
  value = local.sample_map
}

output "output_sample_map_upper" {
  value = local.sample_map_upper
}

output "output_wokloads_config_map" {
  value = local.wokloads_config_map
}
