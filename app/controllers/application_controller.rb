class ApplicationController < ActionController::Base
  def process_pdf
    output_file_path = "document.pdf"
    file = File.open(output_file_path)
    processed_pages = PdfTextProcessor.process(file)

    render json: processed_pages
  end
end
