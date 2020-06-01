class WorksController < ApplicationController
    
    before_action :set_work, only: [:show, :edit, :destroy, :update]
    def index
        @works = Work.order(id: :desc).page(params[:page]).per(10)
    end
    def create
        @work = Work.new(works_params)
        
        if @work.save
            flash[:success] = '今日の仕事が正常に登録されました'
            redirect_to @work
        else
            flash.now[:danger] = '登録に失敗しました'
            render :new 
        end
    end
    def show
    end
    def new
        @work=Work.new
    end
    def edit
    end
    def destroy
        @work.destroy
        
        flash[:success] = '仕事は正常に削除されました'
        redirect_to works_url
    end
    def update
        
        if @work.update(works_params)
            flash[:success] = '仕事は正常に更新されました'
            redirect_to @work
        else
            flash.now[:danger] = '仕事は更新されませんでした'
            render :edit
        end
    end
    
    private
    
    def set_work
        @work = Work.find(params[:id])
    end
    
    def works_params
        params.require(:work).permit(:content, :title) #work は
    end
    
    
  
end
