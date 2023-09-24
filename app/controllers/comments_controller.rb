class CommentsController < ApplicationController
  def create
    @commentable = find_commentable
    # Rails.logger.info @commentable.id 
    # head :ok
    comment = @commentable.comments.build(comment_params)
    comment.save
    redirect_to @commentable, notice: "You comment was successfully posted"
  end


  private
    def find_commentable 
      params.each do |name, value|
        if name =~ /(.+)_id$/
          return $1.classify.constantize.find(value)
        end 
      end 
    end 
    def comment_params
      params.require(:comment).permit(:text)
    end 
end
