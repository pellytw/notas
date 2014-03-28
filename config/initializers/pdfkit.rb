PDFKit.configure do |config|
  config.wkhtmltopdf = "/home/gaston/workspace-rails/notas/extras/wkhtmltopdf"
  config.default_options = {
    :page_size => 'A4',
    :print_media_type => true
  }
end