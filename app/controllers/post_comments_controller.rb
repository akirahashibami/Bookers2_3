class PostCommentsController < ApplicationController

  def create
    book = Book.find(params[:id])
    # bookに投稿するbookのデータを渡す
    comment = PostCommnet.new(post_comment_params)
    # commentに、form_forで入力された内容を新規に渡す
    comment.user_id = current_user.id
    # commentのユーザーIDカラムに、ログインしている人のユーザーIDが渡される
    comment.book_id = book.id
    # commentのブックIDカラムに、上で指定したブックIDが渡される
    comment.save
    redirect_to book_path(book)
  end

  def destroy
    PostCommnet.find_by(id: params[:id], book_id: params[:book_id]).destroy
    # find_byは一通り呼び出して最初にヒットしたものを呼び出す。コメントIDとしてparams[:id]を、ブックIDとしてparams[:book_id]を呼び出している
    redirect_to book_path(params[:book_id])
  end

end
