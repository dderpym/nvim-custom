local present
if not present then
  return
end

require("cmp_tabnine.config"):setup {
  max_lines = 1000,
  max_num_results = 5,
  sort = true,
  run_on_every_keystroke = true,
  snippet_placeholder = "..",
  ignored_file_types = {},
  show_prediction_strength = true,
}
