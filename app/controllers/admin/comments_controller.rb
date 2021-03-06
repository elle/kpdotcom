class Admin::CommentsController < AdminLayoutController
  
  before_filter :require_user
  
  def index
    @rejected_comments = Comment.rejected
    @approved_comments = Comment.approved
  end
  
  def destroy_multiple
    Comment.destroy(params[:comment_ids])
    flash[:notice] = "Successfully destroyed comments."
    redirect_to admin_comments_path
  end
  
  def approve
    @comment = Comment.find(params[:id])
    @comment.mark_as_ham!
    redirect_to admin_comments_path
  end
  
  def reject
    @comment = Comment.find(params[:id])
    @comment.mark_as_spam!
    redirect_to admin_comments_path
  end

  protected
    def set_section
      @section = "admin_comments"
    end
  
end
