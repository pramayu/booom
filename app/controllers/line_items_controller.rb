class LineItemsController < ApplicationController
  def create
    if params[:theme_id]
      @theme = Theme.find(params[:theme_id])
      @line_item = LineItem.create!(:cart => current_cart, :theme => @theme, :unit_price => @theme.price, :license => 'regular', :support => false, :who_have => @theme.user.id)
    elsif params[:code_id]
      @code = Code.find(params[:code_id])
      @line_item = LineItem.create!(:cart => current_cart, :code => @code, :unit_price => @code.price, :license => 'regular', :support => false, :who_have => @code.user.id)
    elsif params[:font_id]
      @font = Font.find(params[:font_id])
      @line_item = LineItem.create!(:cart => current_cart, :font => @font, :unit_price => @font.price, :license => 'regular', :support => false, :who_have => @font.user.id)
    elsif params[:course_id]
      @course = Course.find(params[:course_id])
      @line_item = LineItem.create!(:cart => current_cart, :course => @course, :unit_price => @course.price, :license => 'regular', :support => false, :who_have => @course.user.id)
    elsif params[:graphic_id]
      @graphic = Graphic.find(params[:graphic_id])
      @line_item = LineItem.create!(:cart => current_cart, :graphic => @graphic, :unit_price => @graphic.price, :license => 'regular', :support => false, :who_have => @graphic.user.id)
    elsif params[:t3d_id]
      @t3d = T3d.find(params[:t3d_id])
      @line_item = LineItem.create!(:cart => current_cart, :t3d => @t3d, :unit_price => @t3d.price, :license => 'regular', :support => false, :who_have => @t3d.user.id)
    elsif params[:videofx_id]
      @videofx = Videofx.find(params[:videofx_id])
      @line_item = LineItem.create!(:cart => current_cart, :videofx => @videofx, :unit_price => @videofx.price, :license => 'regular', :support => false, :who_have => @videofx.user.id)
    end
  end

  def edit
    @line_item = LineItem.find(params[:id])
  end

  def update
    @line_item = LineItem.find(params[:id])
    @line_item.update(params[:line_item].permit(:support, :license))
    if @line_item.save
      if @line_item.theme.present?
        if @line_item.license == 'extended'
          @line_item.update unit_price: @line_item.theme.price_ext
        elsif @line_item.license == 'regular'
          @line_item.update unit_price: @line_item.theme.price
        end
        if @line_item.support?
          @line_item.update unit_price: @line_item.unit_price + 30
        elsif !@line_item.support? && @line_item.license == 'regular'
          @line_item.update unit_price: @line_item.theme.price
        elsif !@line_item.support? && @line_item.license == 'extended'
          @line_item.update unit_price: @line_item.theme.price_ext
        end
      elsif @line_item.code.present?
        if @line_item.license == 'extended'
          @line_item.update unit_price: @line_item.code.price_ext
        elsif @line_item.license == 'regular'
          @line_item.update unit_price: @line_item.code.price
        end
        if @line_item.support?
          @line_item.update unit_price: @line_item.unit_price + 30
        elsif !@line_item.support? && @line_item.license == 'regular'
          @line_item.update unit_price: @line_item.code.price
        elsif !@line_item.support? && @line_item.license == 'extended'
          @line_item.update unit_price: @line_item.code.price_ext
        end
      elsif @line_item.font.present?
        if @line_item.license == 'extended'
          @line_item.update unit_price: @line_item.font.price_ext
        elsif @line_item.license == 'regular'
          @line_item.update unit_price: @line_item.font.price
        end
        if @line_item.support?
          @line_item.update unit_price: @line_item.unit_price + 30
        elsif !@line_item.support? && @line_item.license == 'regular'
          @line_item.update unit_price: @line_item.font.price
        elsif !@line_item.support? && @line_item.license == 'extended'
          @line_item.update unit_price: @line_item.font.price_ext
        end
      elsif @line_item.graphic.present?
        if @line_item.license == 'extended'
          @line_item.update unit_price: @line_item.graphic.price_ext
        elsif @line_item.license == 'regular'
          @line_item.update unit_price: @line_item.graphic.price
        end
        if @line_item.support?
          @line_item.update unit_price: @line_item.unit_price + 30
        elsif !@line_item.support? && @line_item.license == 'regular'
          @line_item.update unit_price: @line_item.graphic.price
        elsif !@line_item.support? && @line_item.license == 'extended'
          @line_item.update unit_price: @line_item.graphic.price_ext
        end
      elsif @line_item.t3d.present?
        if @line_item.license == 'extended'
          @line_item.update unit_price: @line_item.t3d.price_ext
        elsif @line_item.license == 'regular'
          @line_item.update unit_price: @line_item.t3d.price
        end
        if @line_item.support?
          @line_item.update unit_price: @line_item.unit_price + 30
        elsif !@line_item.support? && @line_item.license == 'regular'
          @line_item.update unit_price: @line_item.t3d.price
        elsif !@line_item.support? && @line_item.license == 'extended'
          @line_item.update unit_price: @line_item.t3d.price_ext
        end
      elsif @line_item.videofx.present?
        if @line_item.license == 'extended'
          @line_item.update unit_price: @line_item.videofx.price_ext
        elsif @line_item.license == 'regular'
          @line_item.update unit_price: @line_item.videofx.price
        end
        if @line_item.support?
          @line_item.update unit_price: @line_item.unit_price + 30
        elsif !@line_item.support? && @line_item.license == 'regular'
          @line_item.update unit_price: @line_item.videofx.price
        elsif !@line_item.support? && @line_item.license == 'extended'
          @line_item.update unit_price: @line_item.videofx.price_ext
        end
      end
    end
  end

  def delete
    @carts = current_cart.line_items
    @delete = current_cart.line_items.find(params[:id])
    @delete.destroy
  end
end
