use Mix.Config

case Mix.env() do
  # Use the same key config as tests for benchmarking
  :bench ->
    import_config("test.exs")

    # Override mock adapter
    config :joken, current_time_adapter: Joken.CurrentTime.OS

    config :junit_formatter,
    report_file: "MYreport_file_test.xml",
    report_dir: "/tmp",
    print_report_file: true,
    prepend_project_name?: true,
    include_filename?: true

  :docs ->
    :ok

  _ ->
    import_config("#{Mix.env()}.exs")




end
