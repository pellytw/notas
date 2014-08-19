PDFKit.configure do |config|
  config.wkhtmltopdf =   Rails.root.join('extras', 'wkhtmltopdf-amd64').to_s
  config.default_options = {
    :page_size => 'A4',
    :print_media_type => true
    #:disposition => "inline"
  }
end
