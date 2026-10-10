output "lambda_functions_id" {
  description = "Map of id values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lambda_functions_architectures" {
  description = "Map of architectures values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.architectures if v.architectures != null && length(v.architectures) > 0 }
}
output "lambda_functions_arn" {
  description = "Map of arn values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "lambda_functions_capacity_provider_config" {
  description = "Map of capacity_provider_config values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => one(v.capacity_provider_config) if v.capacity_provider_config != null && length(v.capacity_provider_config) > 0 }
}
output "lambda_functions_code_sha256" {
  description = "Map of code_sha256 values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.code_sha256 if v.code_sha256 != null && length(v.code_sha256) > 0 }
}
output "lambda_functions_code_signing_config_arn" {
  description = "Map of code_signing_config_arn values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.code_signing_config_arn if v.code_signing_config_arn != null && length(v.code_signing_config_arn) > 0 }
}
output "lambda_functions_dead_letter_config" {
  description = "Map of dead_letter_config values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => one(v.dead_letter_config) if v.dead_letter_config != null && length(v.dead_letter_config) > 0 }
}
output "lambda_functions_description" {
  description = "Map of description values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "lambda_functions_durable_config" {
  description = "Map of durable_config values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => one(v.durable_config) if v.durable_config != null && length(v.durable_config) > 0 }
}
output "lambda_functions_environment" {
  description = "Map of environment values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "lambda_functions_ephemeral_storage" {
  description = "Map of ephemeral_storage values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => one(v.ephemeral_storage) if v.ephemeral_storage != null && length(v.ephemeral_storage) > 0 }
}
output "lambda_functions_file_system_config" {
  description = "Map of file_system_config values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => one(v.file_system_config) if v.file_system_config != null && length(v.file_system_config) > 0 }
}
output "lambda_functions_filename" {
  description = "Map of filename values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.filename if v.filename != null && length(v.filename) > 0 }
}
output "lambda_functions_function_name" {
  description = "Map of function_name values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.function_name if v.function_name != null && length(v.function_name) > 0 }
}
output "lambda_functions_handler" {
  description = "Map of handler values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.handler if v.handler != null && length(v.handler) > 0 }
}
output "lambda_functions_image_config" {
  description = "Map of image_config values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => one(v.image_config) if v.image_config != null && length(v.image_config) > 0 }
}
output "lambda_functions_image_uri" {
  description = "Map of image_uri values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.image_uri if v.image_uri != null && length(v.image_uri) > 0 }
}
output "lambda_functions_invoke_arn" {
  description = "Map of invoke_arn values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.invoke_arn if v.invoke_arn != null && length(v.invoke_arn) > 0 }
}
output "lambda_functions_kms_key_arn" {
  description = "Map of kms_key_arn values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.kms_key_arn if v.kms_key_arn != null && length(v.kms_key_arn) > 0 }
}
output "lambda_functions_last_modified" {
  description = "Map of last_modified values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.last_modified if v.last_modified != null && length(v.last_modified) > 0 }
}
output "lambda_functions_layers" {
  description = "Map of layers values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.layers if v.layers != null && length(v.layers) > 0 }
}
output "lambda_functions_logging_config" {
  description = "Map of logging_config values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => one(v.logging_config) if v.logging_config != null && length(v.logging_config) > 0 }
}
output "lambda_functions_memory_size" {
  description = "Map of memory_size values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.memory_size if v.memory_size != null }
}
output "lambda_functions_package_type" {
  description = "Map of package_type values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.package_type if v.package_type != null && length(v.package_type) > 0 }
}
output "lambda_functions_publish" {
  description = "Map of publish values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.publish if v.publish != null }
}
output "lambda_functions_publish_to" {
  description = "Map of publish_to values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.publish_to if v.publish_to != null && length(v.publish_to) > 0 }
}
output "lambda_functions_qualified_arn" {
  description = "Map of qualified_arn values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.qualified_arn if v.qualified_arn != null && length(v.qualified_arn) > 0 }
}
output "lambda_functions_qualified_invoke_arn" {
  description = "Map of qualified_invoke_arn values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.qualified_invoke_arn if v.qualified_invoke_arn != null && length(v.qualified_invoke_arn) > 0 }
}
output "lambda_functions_region" {
  description = "Map of region values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lambda_functions_replace_security_groups_on_destroy" {
  description = "Map of replace_security_groups_on_destroy values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.replace_security_groups_on_destroy if v.replace_security_groups_on_destroy != null }
}
output "lambda_functions_replacement_security_group_ids" {
  description = "Map of replacement_security_group_ids values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.replacement_security_group_ids if v.replacement_security_group_ids != null && length(v.replacement_security_group_ids) > 0 }
}
output "lambda_functions_reserved_concurrent_executions" {
  description = "Map of reserved_concurrent_executions values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.reserved_concurrent_executions if v.reserved_concurrent_executions != null }
}
output "lambda_functions_response_streaming_invoke_arn" {
  description = "Map of response_streaming_invoke_arn values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.response_streaming_invoke_arn if v.response_streaming_invoke_arn != null && length(v.response_streaming_invoke_arn) > 0 }
}
output "lambda_functions_role" {
  description = "Map of role values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.role if v.role != null && length(v.role) > 0 }
}
output "lambda_functions_runtime" {
  description = "Map of runtime values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.runtime if v.runtime != null && length(v.runtime) > 0 }
}
output "lambda_functions_s3_bucket" {
  description = "Map of s3_bucket values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.s3_bucket if v.s3_bucket != null && length(v.s3_bucket) > 0 }
}
output "lambda_functions_s3_key" {
  description = "Map of s3_key values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.s3_key if v.s3_key != null && length(v.s3_key) > 0 }
}
output "lambda_functions_s3_object_version" {
  description = "Map of s3_object_version values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.s3_object_version if v.s3_object_version != null && length(v.s3_object_version) > 0 }
}
output "lambda_functions_signing_job_arn" {
  description = "Map of signing_job_arn values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.signing_job_arn if v.signing_job_arn != null && length(v.signing_job_arn) > 0 }
}
output "lambda_functions_signing_profile_version_arn" {
  description = "Map of signing_profile_version_arn values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.signing_profile_version_arn if v.signing_profile_version_arn != null && length(v.signing_profile_version_arn) > 0 }
}
output "lambda_functions_skip_destroy" {
  description = "Map of skip_destroy values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.skip_destroy if v.skip_destroy != null }
}
output "lambda_functions_snap_start" {
  description = "Map of snap_start values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => one(v.snap_start) if v.snap_start != null && length(v.snap_start) > 0 }
}
output "lambda_functions_source_code_hash" {
  description = "Map of source_code_hash values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.source_code_hash if v.source_code_hash != null && length(v.source_code_hash) > 0 }
}
output "lambda_functions_source_code_size" {
  description = "Map of source_code_size values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.source_code_size if v.source_code_size != null }
}
output "lambda_functions_source_kms_key_arn" {
  description = "Map of source_kms_key_arn values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.source_kms_key_arn if v.source_kms_key_arn != null && length(v.source_kms_key_arn) > 0 }
}
output "lambda_functions_tags" {
  description = "Map of tags values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "lambda_functions_tags_all" {
  description = "Map of tags_all values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "lambda_functions_tenancy_config" {
  description = "Map of tenancy_config values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => one(v.tenancy_config) if v.tenancy_config != null && length(v.tenancy_config) > 0 }
}
output "lambda_functions_timeout" {
  description = "Map of timeout values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.timeout if v.timeout != null }
}
output "lambda_functions_tracing_config" {
  description = "Map of tracing_config values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => one(v.tracing_config) if v.tracing_config != null && length(v.tracing_config) > 0 }
}
output "lambda_functions_use_resource_timeout_for_propagation" {
  description = "Map of use_resource_timeout_for_propagation values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.use_resource_timeout_for_propagation if v.use_resource_timeout_for_propagation != null }
}
output "lambda_functions_version" {
  description = "Map of version values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => v.version if v.version != null && length(v.version) > 0 }
}
output "lambda_functions_vpc_config" {
  description = "Map of vpc_config values across all lambda_functions, keyed the same as var.lambda_functions"
  value       = { for k, v in aws_lambda_function.lambda_functions : k => one(v.vpc_config) if v.vpc_config != null && length(v.vpc_config) > 0 }
}

