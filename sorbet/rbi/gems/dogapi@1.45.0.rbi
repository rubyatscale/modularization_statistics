# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `dogapi` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module Dogapi
  class << self
    def find_datadog_host; end
    def find_localhost; end
    def find_proxy; end
    def symbolized_access(hash); end
    def validate_tags(tags); end
  end
end

class Dogapi::APIService
  def initialize(api_key, application_key, silent = T.unsafe(nil), timeout = T.unsafe(nil), endpoint = T.unsafe(nil), skip_ssl_validation = T.unsafe(nil)); end

  def api_key; end
  def application_key; end
  def connect; end
  def handle_redirect(conn, req, resp, retries = T.unsafe(nil)); end
  def handle_response(resp); end
  def prepare_params(extra_params, url, with_app_key); end
  def prepare_request(method, url, params, body, send_json, with_app_key); end
  def request(method, url, extra_params, body, send_json, with_app_key = T.unsafe(nil)); end
  def should_set_api_and_app_keys_in_params?(url); end
  def suppress_error_if_silent(e); end
end

class Dogapi::Client
  def initialize(api_key, application_key = T.unsafe(nil), host = T.unsafe(nil), device = T.unsafe(nil), silent = T.unsafe(nil), timeout = T.unsafe(nil), endpoint = T.unsafe(nil), skip_ssl_validation = T.unsafe(nil)); end

  def add_items_to_dashboard_list(dashboard_list_id, dashboards); end
  def add_tags(host_id, tags, source = T.unsafe(nil)); end
  def alert(query, options = T.unsafe(nil)); end
  def all_tags(source = T.unsafe(nil)); end
  def aws_integration_create(config); end
  def aws_integration_delete(config); end
  def aws_integration_generate_external_id(config); end
  def aws_integration_list; end
  def aws_integration_list_namespaces; end
  def aws_integration_update(config, new_config); end
  def aws_logs_add_lambda(config); end
  def aws_logs_check_lambda(config); end
  def aws_logs_check_services(config); end
  def aws_logs_integration_delete(config); end
  def aws_logs_integrations_list; end
  def aws_logs_list_services; end
  def aws_logs_save_services(config); end
  def azure_integration_create(config); end
  def azure_integration_delete(config); end
  def azure_integration_list; end
  def azure_integration_update(config); end
  def azure_integration_update_host_filters(config); end
  def batch_metrics; end
  def can_delete_monitors(monitor_ids); end
  def can_delete_service_level_objective(slo_ids); end
  def cancel_downtime(downtime_id); end
  def cancel_downtime_by_scope(scope); end
  def comment(message, options = T.unsafe(nil)); end
  def create_board(title, widgets, layout_type, options = T.unsafe(nil)); end
  def create_dashboard(title, description, graphs, template_variables = T.unsafe(nil), read_only = T.unsafe(nil)); end
  def create_dashboard_list(name); end
  def create_embed(graph_json, description = T.unsafe(nil)); end
  def create_integration(source_type_name, config); end
  def create_logs_pipeline(name, filter, options = T.unsafe(nil)); end
  def create_screenboard(description); end
  def create_service_level_objective(type, slo_name, thresholds, options = T.unsafe(nil)); end
  def create_synthetics_test(type, config, options = T.unsafe(nil)); end
  def create_user(description = T.unsafe(nil)); end
  def datadog_host; end
  def datadog_host=(_arg0); end
  def delete_alert(alert_id); end
  def delete_board(dashboard_id); end
  def delete_comment(comment_id); end
  def delete_dashboard(dash_id); end
  def delete_dashboard_list(dashboard_list_id); end
  def delete_event(id); end
  def delete_integration(source_type_name); end
  def delete_items_from_dashboard_list(dashboard_list_id, dashboards); end
  def delete_logs_pipeline(pipeline_id); end
  def delete_many_service_level_objective(slo_ids); end
  def delete_monitor(monitor_id, options = T.unsafe(nil)); end
  def delete_screenboard(board_id); end
  def delete_service_level_objective(slo_id); end
  def delete_synthetics_tests(test_ids); end
  def delete_timeframes_service_level_objective(ops); end
  def detach_tags(host_id, source = T.unsafe(nil)); end
  def detatch_tags(host_id); end
  def disable_user(handle); end
  def emit_event(event, options = T.unsafe(nil)); end
  def emit_point(metric, value, options = T.unsafe(nil)); end
  def emit_points(metric, points, options = T.unsafe(nil)); end
  def enable_embed(embed_id); end
  def gcp_integration_create(config); end
  def gcp_integration_delete(config); end
  def gcp_integration_list; end
  def gcp_integration_update(config); end
  def get_active_metrics(from); end
  def get_alert(alert_id); end
  def get_all_alerts; end
  def get_all_boards; end
  def get_all_dashboard_lists; end
  def get_all_downtimes(options = T.unsafe(nil)); end
  def get_all_embeds; end
  def get_all_logs_pipelines; end
  def get_all_monitors(options = T.unsafe(nil)); end
  def get_all_screenboards; end
  def get_all_synthetics_tests; end
  def get_all_users; end
  def get_board(dashboard_id); end
  def get_custom_metrics_usage(start_hr, end_hr = T.unsafe(nil)); end
  def get_dashboard(dash_id); end
  def get_dashboard_list(dashboard_list_id); end
  def get_dashboards; end
  def get_downtime(downtime_id, options = T.unsafe(nil)); end
  def get_embed(embed_id, description = T.unsafe(nil)); end
  def get_event(id); end
  def get_fargate_usage(start_hr, end_hr = T.unsafe(nil)); end
  def get_hosts_usage(start_hr, end_hr = T.unsafe(nil)); end
  def get_integration(source_type_name); end
  def get_items_of_dashboard_list(dashboard_list_id); end
  def get_logs_pipeline(pipeline_id); end
  def get_logs_usage(start_hr, end_hr = T.unsafe(nil)); end
  def get_metadata(metric); end
  def get_monitor(monitor_id, options = T.unsafe(nil)); end
  def get_points(query, from, to); end
  def get_screenboard(board_id); end
  def get_service_level_objective(slo_id); end
  def get_service_level_objective_history(slo_id, from_ts, to_ts); end
  def get_synthetics_devices; end
  def get_synthetics_locations; end
  def get_synthetics_result(test_id, result_id); end
  def get_synthetics_results(test_id); end
  def get_synthetics_test(test_id); end
  def get_synthetics_usage(start_hr, end_hr = T.unsafe(nil)); end
  def get_traces_usage(start_hr, end_hr = T.unsafe(nil)); end
  def get_user(handle); end
  def graph_snapshot(metric_query, start_ts, end_ts, event_query = T.unsafe(nil)); end
  def host_tags(host_id, source = T.unsafe(nil), by_source = T.unsafe(nil)); end
  def host_totals; end
  def invite(emails, options = T.unsafe(nil)); end
  def monitor(type, query, options = T.unsafe(nil)); end
  def mute_alerts; end
  def mute_host(hostname, options = T.unsafe(nil)); end
  def mute_monitor(monitor_id, options = T.unsafe(nil)); end
  def mute_monitors; end
  def resolve_monitors(monitor_groups = T.unsafe(nil), options = T.unsafe(nil), version = T.unsafe(nil)); end
  def revoke_embed(embed_id); end
  def revoke_screenboard(board_id); end
  def schedule_downtime(scope, options = T.unsafe(nil)); end
  def search(query); end
  def search_hosts(options = T.unsafe(nil)); end
  def search_monitor_groups(options = T.unsafe(nil)); end
  def search_monitors(options = T.unsafe(nil)); end
  def search_service_level_objective(slo_ids = T.unsafe(nil), query = T.unsafe(nil), offset = T.unsafe(nil), limit = T.unsafe(nil)); end
  def service_check(check, host, status, options = T.unsafe(nil)); end
  def share_screenboard(board_id); end
  def start_event(event, options = T.unsafe(nil)); end
  def start_pause_synthetics_test(test_id, new_status); end
  def stream(start, stop, options = T.unsafe(nil)); end
  def unmute_alerts; end
  def unmute_host(hostname); end
  def unmute_monitor(monitor_id, options = T.unsafe(nil)); end
  def unmute_monitors; end
  def update_alert(alert_id, query, options = T.unsafe(nil)); end
  def update_board(dashboard_id, title, widgets, layout_type, options = T.unsafe(nil)); end
  def update_comment(comment_id, options = T.unsafe(nil)); end
  def update_dashboard(dash_id, title, description, graphs, template_variables = T.unsafe(nil), read_only = T.unsafe(nil)); end
  def update_dashboard_list(dashboard_list_id, name); end
  def update_downtime(downtime_id, options = T.unsafe(nil)); end
  def update_integration(source_type_name, config); end
  def update_items_of_dashboard_list(dashboard_list_id, dashboards); end
  def update_logs_pipeline(pipeline_id, name, filter, options = T.unsafe(nil)); end
  def update_metadata(metric, options = T.unsafe(nil)); end
  def update_monitor(monitor_id, query, options = T.unsafe(nil)); end
  def update_screenboard(board_id, description); end
  def update_service_level_objective(slo_id, type, options = T.unsafe(nil)); end
  def update_synthetics_test(test_id, type, config, options = T.unsafe(nil)); end
  def update_tags(host_id, tags, source = T.unsafe(nil)); end
  def update_user(handle, description = T.unsafe(nil)); end
  def v2; end
  def v2=(_arg0); end
  def validate_monitor(type, query, options = T.unsafe(nil)); end

  private

  def override_scope(options = T.unsafe(nil)); end
end

class Dogapi::ClientV2
  def initialize(api_key, application_key = T.unsafe(nil), host = T.unsafe(nil), device = T.unsafe(nil), silent = T.unsafe(nil), timeout = T.unsafe(nil), endpoint = T.unsafe(nil), skip_ssl_validation = T.unsafe(nil)); end

  def add_items_to_dashboard_list(dashboard_list_id, dashboards); end
  def datadog_host; end
  def datadog_host=(_arg0); end
  def delete_items_from_dashboard_list(dashboard_list_id, dashboards); end
  def get_items_of_dashboard_list(dashboard_list_id); end
  def update_items_of_dashboard_list(dashboard_list_id, dashboards); end
end

class Dogapi::Event
  def initialize(msg_text, options = T.unsafe(nil)); end

  def aggregation_key; end
  def date_happened; end
  def msg_text; end
  def msg_title; end
  def parent; end
  def priority; end
  def tags; end
  def to_hash; end
end

class Dogapi::EventService < ::Dogapi::Service
  def start(api_key, event, scope, source_type = T.unsafe(nil)); end
  def submit(api_key, event, scope = T.unsafe(nil), source_type = T.unsafe(nil)); end

  private

  def finish(api_key, event_id, successful = T.unsafe(nil)); end
end

Dogapi::EventService::API_VERSION = T.let(T.unsafe(nil), String)
Dogapi::EventService::MAX_BODY_LENGTH = T.let(T.unsafe(nil), Integer)
Dogapi::EventService::MAX_TITLE_LENGTH = T.let(T.unsafe(nil), Integer)

class Dogapi::MetricService < ::Dogapi::Service
  def submit(api_key, scope, metric, points); end
end

Dogapi::MetricService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::Scope
  def initialize(host = T.unsafe(nil), device = T.unsafe(nil)); end

  def device; end
  def host; end
end

class Dogapi::Service
  def initialize(api_key, api_host = T.unsafe(nil)); end

  def connect; end
  def request(method, url, params); end
end

Dogapi::USER_AGENT = T.let(T.unsafe(nil), String)
class Dogapi::V1; end

class Dogapi::V1::AlertService < ::Dogapi::APIService
  def alert(query, options = T.unsafe(nil)); end
  def delete_alert(alert_id); end
  def get_alert(alert_id); end
  def get_all_alerts; end
  def mute_alerts; end
  def unmute_alerts; end
  def update_alert(alert_id, query, options); end
end

Dogapi::V1::AlertService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::AwsIntegrationService < ::Dogapi::APIService
  def aws_integration_create(config); end
  def aws_integration_delete(config); end
  def aws_integration_generate_external_id(config); end
  def aws_integration_list; end
  def aws_integration_list_namespaces; end
  def aws_integration_update(config, new_config); end
end

Dogapi::V1::AwsIntegrationService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::AwsLogsService < ::Dogapi::APIService
  def aws_logs_add_lambda(config); end
  def aws_logs_check_lambda(config); end
  def aws_logs_check_services(config); end
  def aws_logs_integration_delete(config); end
  def aws_logs_integrations_list; end
  def aws_logs_list_services; end
  def aws_logs_save_services(config); end
end

Dogapi::V1::AwsLogsService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::AzureIntegrationService < ::Dogapi::APIService
  def azure_integration_create(config); end
  def azure_integration_delete(config); end
  def azure_integration_list; end
  def azure_integration_update(config); end
  def azure_integration_update_host_filters(config); end
end

Dogapi::V1::AzureIntegrationService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::CommentService < ::Dogapi::APIService
  def comment(message, options = T.unsafe(nil)); end
  def delete_comment(comment_id); end
  def update_comment(comment_id, options = T.unsafe(nil)); end
end

Dogapi::V1::CommentService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::DashService < ::Dogapi::APIService
  def create_dashboard(title, description, graphs, template_variables = T.unsafe(nil), read_only = T.unsafe(nil)); end
  def delete_dashboard(dash_id); end
  def get_dashboard(dash_id); end
  def get_dashboards; end
  def update_dashboard(dash_id, title, description, graphs, template_variables = T.unsafe(nil), read_only = T.unsafe(nil)); end
end

Dogapi::V1::DashService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::DashboardListService < ::Dogapi::APIService
  def add_items(resource_id, dashboards); end
  def all; end
  def create(name); end
  def delete(resource_id); end
  def delete_items(resource_id, dashboards); end
  def get(resource_id); end
  def get_items(resource_id); end
  def update(resource_id, name); end
  def update_items(resource_id, dashboards); end
end

Dogapi::V1::DashboardListService::API_VERSION = T.let(T.unsafe(nil), String)
Dogapi::V1::DashboardListService::RESOURCE_NAME = T.let(T.unsafe(nil), String)
Dogapi::V1::DashboardListService::SUB_RESOURCE_NAME = T.let(T.unsafe(nil), String)

class Dogapi::V1::DashboardService < ::Dogapi::APIService
  def create_board(title, widgets, layout_type, options); end
  def delete_board(dashboard_id); end
  def get_all_boards; end
  def get_board(dashboard_id); end
  def update_board(dashboard_id, title, widgets, layout_type, options); end
end

Dogapi::V1::DashboardService::API_VERSION = T.let(T.unsafe(nil), String)
Dogapi::V1::DashboardService::RESOURCE_NAME = T.let(T.unsafe(nil), String)

class Dogapi::V1::EmbedService < ::Dogapi::APIService
  def create_embed(graph_json, description = T.unsafe(nil)); end
  def enable_embed(embed_id); end
  def get_all_embeds; end
  def get_embed(embed_id, description = T.unsafe(nil)); end
  def revoke_embed(embed_id); end
end

Dogapi::V1::EmbedService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::EventService < ::Dogapi::APIService
  def delete(id); end
  def get(id); end
  def post(event, scope = T.unsafe(nil)); end
  def stream(start, stop, options = T.unsafe(nil)); end
end

Dogapi::V1::EventService::API_VERSION = T.let(T.unsafe(nil), String)
Dogapi::V1::EventService::MAX_BODY_LENGTH = T.let(T.unsafe(nil), Integer)
Dogapi::V1::EventService::MAX_TITLE_LENGTH = T.let(T.unsafe(nil), Integer)

class Dogapi::V1::GcpIntegrationService < ::Dogapi::APIService
  def gcp_integration_create(config); end
  def gcp_integration_delete(config); end
  def gcp_integration_list; end
  def gcp_integration_update(config); end
end

Dogapi::V1::GcpIntegrationService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::HostsService < ::Dogapi::APIService
  def search(options = T.unsafe(nil)); end
  def totals; end
end

Dogapi::V1::HostsService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::IntegrationService < ::Dogapi::APIService
  def create_integration(source_type_name, config); end
  def delete_integration(source_type_name); end
  def get_integration(source_type_name); end
  def update_integration(source_type_name, config); end
end

Dogapi::V1::IntegrationService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::LogsPipelineService < ::Dogapi::APIService
  def create_logs_pipeline(name, filter, options = T.unsafe(nil)); end
  def delete_logs_pipeline(pipeline_id); end
  def get_all_logs_pipelines; end
  def get_logs_pipeline(pipeline_id); end
  def update_logs_pipeline(pipeline_id, name, filter, options = T.unsafe(nil)); end
end

Dogapi::V1::LogsPipelineService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::MetadataService < ::Dogapi::APIService
  def get(metric_name); end
  def update(metric_name, options = T.unsafe(nil)); end
end

Dogapi::V1::MetadataService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::MetricService < ::Dogapi::APIService
  def flush_buffer; end
  def get(query, from, to); end
  def get_active_metrics(from); end
  def make_metric_payload(metric, points, scope, options); end
  def submit(*args); end
  def submit_to_api(metric, points, scope, options = T.unsafe(nil)); end
  def submit_to_buffer(metric, points, scope, options = T.unsafe(nil)); end
  def switch_to_batched; end
  def switch_to_single; end
  def upload(metrics); end
end

Dogapi::V1::MetricService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::MonitorService < ::Dogapi::APIService
  def can_delete_monitors(monitor_ids); end
  def cancel_downtime(downtime_id); end
  def cancel_downtime_by_scope(scope); end
  def delete_monitor(monitor_id, options = T.unsafe(nil)); end
  def get_all_downtimes(options = T.unsafe(nil)); end
  def get_all_monitors(options = T.unsafe(nil)); end
  def get_downtime(downtime_id, options = T.unsafe(nil)); end
  def get_monitor(monitor_id, options = T.unsafe(nil)); end
  def monitor(type, query, options = T.unsafe(nil)); end
  def mute_host(hostname, options = T.unsafe(nil)); end
  def mute_monitor(monitor_id, options = T.unsafe(nil)); end
  def mute_monitors; end
  def resolve_monitors(monitor_groups = T.unsafe(nil), options = T.unsafe(nil), version = T.unsafe(nil)); end
  def schedule_downtime(scope, options = T.unsafe(nil)); end
  def search_monitor_groups(options = T.unsafe(nil)); end
  def search_monitors(options = T.unsafe(nil)); end
  def unmute_host(hostname); end
  def unmute_monitor(monitor_id, options = T.unsafe(nil)); end
  def unmute_monitors; end
  def update_downtime(downtime_id, options = T.unsafe(nil)); end
  def update_monitor(monitor_id, query = T.unsafe(nil), options = T.unsafe(nil)); end
  def validate_monitor(type, query, options = T.unsafe(nil)); end
end

Dogapi::V1::MonitorService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::ScreenboardService < ::Dogapi::APIService
  def create_screenboard(description); end
  def delete_screenboard(board_id); end
  def get_all_screenboards; end
  def get_screenboard(board_id); end
  def revoke_screenboard(board_id); end
  def share_screenboard(board_id); end
  def update_screenboard(board_id, description); end
end

Dogapi::V1::ScreenboardService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::SearchService < ::Dogapi::APIService
  def search(query); end
end

Dogapi::V1::SearchService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::ServiceCheckService < ::Dogapi::APIService
  def service_check(check, host, status, options = T.unsafe(nil)); end
end

Dogapi::V1::ServiceCheckService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::ServiceLevelObjectiveService < ::Dogapi::APIService
  def can_delete_service_level_objective(slo_ids); end
  def create_service_level_objective(type, slo_name, thresholds, options = T.unsafe(nil)); end
  def delete_many_service_level_objective(slo_ids); end
  def delete_service_level_objective(slo_id); end
  def delete_timeframes_service_level_objective(ops); end
  def get_service_level_objective(slo_id); end
  def get_service_level_objective_history(slo_id, from_ts, to_ts); end
  def search_service_level_objective(slo_ids, query, offset, limit); end
  def update_service_level_objective(slo_id, type, options = T.unsafe(nil)); end
end

Dogapi::V1::ServiceLevelObjectiveService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::SnapshotService < ::Dogapi::APIService
  def snapshot(metric_query, start_ts, end_ts, event_query = T.unsafe(nil)); end
end

Dogapi::V1::SnapshotService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::SyntheticsService < ::Dogapi::APIService
  def create_synthetics_test(type, config, options = T.unsafe(nil)); end
  def delete_synthetics_tests(test_ids); end
  def get_all_synthetics_tests; end
  def get_synthetics_devices; end
  def get_synthetics_locations; end
  def get_synthetics_result(test_id, result_id); end
  def get_synthetics_results(test_id); end
  def get_synthetics_test(test_id); end
  def start_pause_synthetics_test(test_id, new_status); end
  def update_synthetics_test(test_id, type, config, options = T.unsafe(nil)); end
end

Dogapi::V1::SyntheticsService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::TagService < ::Dogapi::APIService
  def add(host_id, tags, source = T.unsafe(nil)); end
  def detach(host_id, source = T.unsafe(nil)); end
  def detatch(host_id); end
  def get(host_id, source = T.unsafe(nil), by_source = T.unsafe(nil)); end
  def get_all(source = T.unsafe(nil)); end
  def update(host_id, tags, source = T.unsafe(nil)); end
end

Dogapi::V1::TagService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::UsageService < ::Dogapi::APIService
  def get_custom_metrics_usage(start_hr, end_hr = T.unsafe(nil)); end
  def get_fargate_usage(start_hr, end_hr = T.unsafe(nil)); end
  def get_hosts_usage(start_hr, end_hr = T.unsafe(nil)); end
  def get_logs_usage(start_hr, end_hr = T.unsafe(nil)); end
  def get_synthetics_usage(start_hr, end_hr = T.unsafe(nil)); end
  def get_traces_usage(start_hr, end_hr = T.unsafe(nil)); end
end

Dogapi::V1::UsageService::API_VERSION = T.let(T.unsafe(nil), String)

class Dogapi::V1::UserService < ::Dogapi::APIService
  def create_user(description = T.unsafe(nil)); end
  def disable_user(handle); end
  def get_all_users; end
  def get_user(handle); end
  def invite(emails, options = T.unsafe(nil)); end
  def update_user(handle, description = T.unsafe(nil)); end
end

Dogapi::V1::UserService::API_VERSION = T.let(T.unsafe(nil), String)
class Dogapi::V2; end

class Dogapi::V2::DashboardListService < ::Dogapi::APIService
  def add_items(resource_id, dashboards); end
  def delete_items(resource_id, dashboards); end
  def get_items(resource_id); end
  def update_items(resource_id, dashboards); end
end

Dogapi::V2::DashboardListService::API_VERSION = T.let(T.unsafe(nil), String)
Dogapi::V2::DashboardListService::RESOURCE_NAME = T.let(T.unsafe(nil), String)
Dogapi::V2::DashboardListService::SUB_RESOURCE_NAME = T.let(T.unsafe(nil), String)
Dogapi::VERSION = T.let(T.unsafe(nil), String)
