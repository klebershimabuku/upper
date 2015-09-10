class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    if @document.save
      redirect_to resumes_path, notice: "The document #{@document.name} has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @document = Resume.find(params[:id])
    @document.destroy
    redirect_to resumes_path, notice:  "The document #{@document.name} has been deleted."
  end

private
  def document_params
    params.require(:document).permit(:name, :attachment)
  end
end
