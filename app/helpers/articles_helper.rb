module ArticlesHelper
     def article_params
            params.require(:article).permit(:title, :body, :tag_list, :image, :estimated_time, :est_to_hireable)
     end
end
