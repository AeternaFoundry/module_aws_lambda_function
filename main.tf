resource "aws_lambda_function" "lambda_functions" {
  for_each = var.lambda_functions

  function_name                        = each.value.function_name
  role                                 = each.value.role
  tags_all                             = each.value.tags_all
  tags                                 = each.value.tags
  source_kms_key_arn                   = each.value.source_kms_key_arn
  source_code_hash                     = each.value.source_code_hash
  skip_destroy                         = each.value.skip_destroy
  s3_object_version                    = each.value.s3_object_version
  s3_key                               = each.value.s3_key
  s3_bucket                            = each.value.s3_bucket
  runtime                              = each.value.runtime
  reserved_concurrent_executions       = each.value.reserved_concurrent_executions
  replacement_security_group_ids       = each.value.replacement_security_group_ids
  replace_security_groups_on_destroy   = each.value.replace_security_groups_on_destroy
  region                               = each.value.region
  publish_to                           = each.value.publish_to
  publish                              = each.value.publish
  package_type                         = each.value.package_type
  memory_size                          = each.value.memory_size
  layers                               = each.value.layers
  kms_key_arn                          = each.value.kms_key_arn
  image_uri                            = each.value.image_uri
  handler                              = each.value.handler
  filename                             = each.value.filename
  description                          = each.value.description
  code_signing_config_arn              = each.value.code_signing_config_arn
  code_sha256                          = each.value.code_sha256
  architectures                        = each.value.architectures
  timeout                              = each.value.timeout
  use_resource_timeout_for_propagation = each.value.use_resource_timeout_for_propagation

  dynamic "capacity_provider_config" {
    for_each = each.value.capacity_provider_config != null ? [each.value.capacity_provider_config] : []
    content {
      lambda_managed_instances_capacity_provider_config {
        capacity_provider_arn                     = capacity_provider_config.value.lambda_managed_instances_capacity_provider_config.capacity_provider_arn
        execution_environment_memory_gib_per_vcpu = capacity_provider_config.value.lambda_managed_instances_capacity_provider_config.execution_environment_memory_gib_per_vcpu
        per_execution_environment_max_concurrency = capacity_provider_config.value.lambda_managed_instances_capacity_provider_config.per_execution_environment_max_concurrency
      }
    }
  }

  dynamic "dead_letter_config" {
    for_each = each.value.dead_letter_config != null ? [each.value.dead_letter_config] : []
    content {
      target_arn = dead_letter_config.value.target_arn
    }
  }

  dynamic "durable_config" {
    for_each = each.value.durable_config != null ? [each.value.durable_config] : []
    content {
      execution_timeout = durable_config.value.execution_timeout
      retention_period  = durable_config.value.retention_period
    }
  }

  dynamic "environment" {
    for_each = each.value.environment != null ? [each.value.environment] : []
    content {
      variables = environment.value.variables
    }
  }

  dynamic "ephemeral_storage" {
    for_each = each.value.ephemeral_storage != null ? [each.value.ephemeral_storage] : []
    content {
      size = ephemeral_storage.value.size
    }
  }

  dynamic "file_system_config" {
    for_each = each.value.file_system_config != null ? [each.value.file_system_config] : []
    content {
      arn              = file_system_config.value.arn
      local_mount_path = file_system_config.value.local_mount_path
    }
  }

  dynamic "image_config" {
    for_each = each.value.image_config != null ? [each.value.image_config] : []
    content {
      command           = image_config.value.command
      entry_point       = image_config.value.entry_point
      working_directory = image_config.value.working_directory
    }
  }

  dynamic "logging_config" {
    for_each = each.value.logging_config != null ? [each.value.logging_config] : []
    content {
      application_log_level = logging_config.value.application_log_level
      log_format            = logging_config.value.log_format
      log_group             = logging_config.value.log_group
      system_log_level      = logging_config.value.system_log_level
    }
  }

  dynamic "snap_start" {
    for_each = each.value.snap_start != null ? [each.value.snap_start] : []
    content {
      apply_on = snap_start.value.apply_on
    }
  }

  dynamic "tenancy_config" {
    for_each = each.value.tenancy_config != null ? [each.value.tenancy_config] : []
    content {
      tenant_isolation_mode = tenancy_config.value.tenant_isolation_mode
    }
  }

  dynamic "tracing_config" {
    for_each = each.value.tracing_config != null ? [each.value.tracing_config] : []
    content {
      mode = tracing_config.value.mode
    }
  }

  dynamic "vpc_config" {
    for_each = each.value.vpc_config != null ? [each.value.vpc_config] : []
    content {
      ipv6_allowed_for_dual_stack = vpc_config.value.ipv6_allowed_for_dual_stack
      security_group_ids          = vpc_config.value.security_group_ids
      subnet_ids                  = vpc_config.value.subnet_ids
    }
  }
}

