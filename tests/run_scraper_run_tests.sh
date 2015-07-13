#!/bin/bash

suite='scraper.scraper_run_test.ScraperRunTest'
tests="
test_missing_url_elem
test_scraper
test_double
test_detail_page_url_id_field
test_single_standard_id_field
test_double_standard_id_field
test_standard_update_field
test_standard_update_field_update
test_testmode
test_task_run_type
test_no_task_run_type
test_runtime_config_max_items_read
test_runtime_config_max_items_save
test_max_items_read
test_max_items_save
test_missing_mandatory
test_scraper_pause_status
test_scraper_inactive_status
"

for test in `echo $tests`
do
    echo $suite.$test
    python manage.py test $suite.$test
done

suite='scraper.scraper_processor_run_test.ScraperProcessorRunTest'
tests="
test_processor
test_multiple_processors_use
test_replace_processor_wrong_x_path
test_replace_processor_correct_x_path
test_static_processor_wrong_x_path
test_static_processor_correct_x_path
test_reg_exp
"

for test in `echo $tests`
do
    echo $suite.$test
    python manage.py test $suite.$test
done

suite='scraper.scraper_img_run_test.ScraperImgRunTest'
tests="
test_img_store_format_flat_no_thumbs
test_img_store_format_flat_with_thumbs
test_img_store_format_all_no_thumbs
test_img_store_format_all_with_thumbs
test_img_store_format_thumbs_with_thumbs
test_missing_img_when_img_field_not_mandatory
"

for test in `echo $tests`
do
    echo $suite.$test
    python manage.py test $suite.$test
done