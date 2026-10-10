variable "lambda_functions" {
  description = <<EOT
Map of lambda_functions, attributes below
Required:
    - function_name
    - role
Optional:
    - architectures
    - code_sha256
    - code_signing_config_arn
    - description
    - filename
    - handler
    - image_uri
    - kms_key_arn
    - layers
    - memory_size
    - package_type
    - publish
    - publish_to
    - region
    - replace_security_groups_on_destroy
    - replacement_security_group_ids
    - reserved_concurrent_executions
    - runtime
    - s3_bucket
    - s3_key
    - s3_object_version
    - skip_destroy
    - source_code_hash
    - source_kms_key_arn
    - tags
    - tags_all
    - timeout
    - use_resource_timeout_for_propagation
    - capacity_provider_config (block):
        - lambda_managed_instances_capacity_provider_config (required, block):
            - capacity_provider_arn (required)
            - execution_environment_memory_gib_per_vcpu (optional)
            - per_execution_environment_max_concurrency (optional)
    - dead_letter_config (block):
        - target_arn (required)
    - durable_config (block):
        - execution_timeout (required)
        - retention_period (optional)
    - environment (block):
        - variables (optional)
    - ephemeral_storage (block):
        - size (optional)
    - file_system_config (block):
        - arn (required)
        - local_mount_path (required)
    - image_config (block):
        - command (optional)
        - entry_point (optional)
        - working_directory (optional)
    - logging_config (block):
        - application_log_level (optional)
        - log_format (required)
        - log_group (optional)
        - system_log_level (optional)
    - snap_start (block):
        - apply_on (required)
    - tenancy_config (block):
        - tenant_isolation_mode (required)
    - tracing_config (block):
        - mode (required)
    - vpc_config (block):
        - ipv6_allowed_for_dual_stack (optional)
        - security_group_ids (required)
        - subnet_ids (required)
EOT

  type = map(object({
    function_name                        = string
    role                                 = string
    tags_all                             = optional(map(string))
    tags                                 = optional(map(string))
    source_kms_key_arn                   = optional(string)
    source_code_hash                     = optional(string)
    skip_destroy                         = optional(bool)
    s3_object_version                    = optional(string)
    s3_key                               = optional(string)
    s3_bucket                            = optional(string)
    runtime                              = optional(string)
    reserved_concurrent_executions       = optional(number)
    replacement_security_group_ids       = optional(set(string))
    replace_security_groups_on_destroy   = optional(bool)
    region                               = optional(string)
    publish_to                           = optional(string)
    publish                              = optional(bool)
    package_type                         = optional(string)
    memory_size                          = optional(number)
    layers                               = optional(list(string))
    kms_key_arn                          = optional(string)
    image_uri                            = optional(string)
    handler                              = optional(string)
    filename                             = optional(string)
    description                          = optional(string)
    code_signing_config_arn              = optional(string)
    code_sha256                          = optional(string)
    architectures                        = optional(list(string))
    timeout                              = optional(number)
    use_resource_timeout_for_propagation = optional(bool)
    capacity_provider_config = optional(object({
      lambda_managed_instances_capacity_provider_config = object({
        capacity_provider_arn                     = string
        execution_environment_memory_gib_per_vcpu = optional(number)
        per_execution_environment_max_concurrency = optional(number)
      })
    }))
    dead_letter_config = optional(object({
      target_arn = string
    }))
    durable_config = optional(object({
      execution_timeout = number
      retention_period  = optional(number)
    }))
    environment = optional(object({
      variables = optional(map(string))
    }))
    ephemeral_storage = optional(object({
      size = optional(number)
    }))
    file_system_config = optional(object({
      arn              = string
      local_mount_path = string
    }))
    image_config = optional(object({
      command           = optional(list(string))
      entry_point       = optional(list(string))
      working_directory = optional(string)
    }))
    logging_config = optional(object({
      application_log_level = optional(string)
      log_format            = string
      log_group             = optional(string)
      system_log_level      = optional(string)
    }))
    snap_start = optional(object({
      apply_on = string
    }))
    tenancy_config = optional(object({
      tenant_isolation_mode = string
    }))
    tracing_config = optional(object({
      mode = string
    }))
    vpc_config = optional(object({
      ipv6_allowed_for_dual_stack = optional(bool)
      security_group_ids          = set(string)
      subnet_ids                  = set(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lambda_functions : (
        v.durable_config == null || (v.durable_config.execution_timeout >= 1 && v.durable_config.execution_timeout <= 31622400)
      )
    ])
    error_message = "must be between 1 and 31622400"
  }
  validation {
    condition = alltrue([
      for k, v in var.lambda_functions : (
        v.file_system_config == null || (can(regex("^/mnt/[0-9A-Za-z_.-]+$", v.file_system_config.local_mount_path)))
      )
    ])
    error_message = "must start with '/mnt/'"
  }
  validation {
    condition = alltrue([
      for k, v in var.lambda_functions : (
        v.handler == null || (length(v.handler) >= 1 && length(v.handler) <= 128)
      )
    ])
    error_message = "must be between 1 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.lambda_functions : (
        v.memory_size == null || (v.memory_size >= 128 && v.memory_size <= 32768)
      )
    ])
    error_message = "must be between 128 and 32768"
  }
  validation {
    condition = alltrue([
      for k, v in var.lambda_functions : (
        v.reserved_concurrent_executions == null || (v.reserved_concurrent_executions >= -1)
      )
    ])
    error_message = "must be at least -1"
  }
  # Note: 23 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

