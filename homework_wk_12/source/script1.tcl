cd ../quartus
load_package report
project_open setup.qpf
load_report
set panel_names [get_report_panel_names]

foreach panel_name $panel_names {
    post_message "$panel_name"
}
cd ../source
