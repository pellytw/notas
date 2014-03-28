# config/initializers/pdfkit.rb
PDFKit.configure do |config|
#config.i18n.load_path += 
  #config.wkhtmltopdf = Dir[Rails.root.join('my', 'locales').to_s]
  config.wkhtmltopdf = "/home/gaston/workspace-rails/notas/extras/wkhtmltopdf-i386"
  config.default_options = {
    :page_size => 'Legal',
    :print_media_type => true
  }
  # Use only if your external hostname is unavailable on the server.
  config.root_url = "http://localhost"
  config.verbose = false
end