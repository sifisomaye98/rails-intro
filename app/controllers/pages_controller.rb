class PagesController < ApplicationController
  def home

  end

  def about

  end

  def contact
    @names = ["sifiso", "ego", "Trillionare"]

    if params[:names]
      @names = @names.select { |name| name.start_with?(params[:name])}
    end
  end
end
