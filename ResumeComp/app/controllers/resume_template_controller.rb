class ResumeTemplateController < ApplicationController

  def index
  end

  def download
    PDFKit.configure do |config|
      config.wkhtmltopdf = '/Users/kengorou/.rbenv/shims/wkhtmltopdf'
    end
    html = File.read("#{Rails.root}/app/views/resume_template/index.html.erb")
    kit = PDFKit.new(html, :page_size => 'Letter')
    send_data kit.to_pdf, filename: 'resume.pdf', type: 'application/pdf'
  end

end
