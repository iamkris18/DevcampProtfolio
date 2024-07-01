class PortfoliosController < ApplicationController
def index
    @portfolio_items=Portfolio.all
end
def new
    @portfolio_items=Portfolio.new
end
def create
    @portfolio_items= Portfolio.new(params.require(:portfolio).permit(:title,:subtitle, :body))

    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to portfolios_path, notice: "Portfolio is live" }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end
 

  def edit
@portfolio_items=Portfolio.find(params[:id])
  end

  def update
    @portfolio_items=Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_items.update(params.require(:portfolio).permit(:title,:subtitle, :body))
        format.html { redirect_to portfolios_path, notice: "Record was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def show 
    @portfolio_items=Portfolio.find(params[:id])
  end
  def destroy
    #perform the lookup
    @portfolio_items=Portfolio.find(params[:id])
    #this is going to destroy
    @portfolio_items.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "record was successfully destroyed." }
    end
  end


end

