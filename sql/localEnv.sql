# @author Andrea De Pirro <andreadepirro@gmail.com>
# @version 1
SET FOREIGN_KEY_CHECKS=0;
UPDATE `core_config_data` SET `value` = "http://localhost/" WHERE `path` = "web/unsecure/base_url";
UPDATE `core_config_data` SET `value` = "http://localhost/" WHERE `path` = "web/secure/base_url";
UPDATE `core_config_data` SET `value` = "http://localhost/" WHERE `path` = "web/unsecure/base_web_url";
UPDATE `core_config_data` SET `value` = "http://localhost/" WHERE `path` = "web/secure/base_web_url";
UPDATE `core_config_data` SET `value` = "{{unsecure_base_url}}" WHERE `path` = "web/unsecure/base_link_url";
UPDATE `core_config_data` SET `value` = "{{unsecure_base_url}}/skin/" WHERE `path` = "web/unsecure/base_skin_url";
UPDATE `core_config_data` SET `value` = "{{unsecure_base_url}}/media/" WHERE `path` = "web/unsecure/base_media_url";
UPDATE `core_config_data` SET `value` = "{{unsecure_base_url}}/js/" WHERE `path` = "web/unsecure/base_js_url";
UPDATE `core_config_data` SET `value` = "{{secure_base_url}}" WHERE `path` = "web/secure/base_link_url";
UPDATE `core_config_data` SET `value` = "{{secure_base_url}}/skin/" WHERE `path` = "web/secure/base_skin_url";
UPDATE `core_config_data` SET `value` = "{{secure_base_url}}/media/" WHERE `path` = "web/secure/base_media_url";
UPDATE `core_config_data` SET `value` = "{{secure_base_url}}/js/" WHERE `path` = "web/secure/base_js_url";
UPDATE `core_config_data` SET `value` = "0" WHERE `path` = "web/secure/use_in_adminhtml";
UPDATE `core_config_data` SET `value` = "0" WHERE `path` = "web/secure/use_in_frontend";
UPDATE `core_cache_option` SET `value` = 0;
UPDATE `core_config_data` SET `value` = "0" WHERE `path` = "dev/js/merge_files";
UPDATE `core_config_data` SET `value` = "0" WHERE `path` = "dev/css/merge_files";
UPDATE `core_store` SET store_id = 0 WHERE code='admin';
UPDATE `core_store_group` SET group_id = 0 WHERE name='Default';
UPDATE `core_website` SET website_id = 0 WHERE code='admin';
UPDATE `customer_group` SET customer_group_id = 0 WHERE customer_group_code='NOT LOGGED IN';
TRUNCATE `log_customer`;
TRUNCATE `log_quote`;
TRUNCATE `log_summary`;
TRUNCATE `log_summary_type`;
TRUNCATE `log_url`;
TRUNCATE `log_url_info`;
TRUNCATE `log_visitor`;
TRUNCATE `log_visitor_info`;
TRUNCATE `log_visitor_online`;
SET FOREIGN_KEY_CHECKS=1;