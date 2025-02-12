class ApplicationController < ActionController::Base
  def home
  end

  def square_form
  end

  def square_results
    @number = params[:number]
    @square = @number.to_f**2
  end

  def square_root_form
  end

  def square_root_results
    @number = params[:number]
    @square_root = @number.to_f**0.5
  end

  def payment_form
  end

  def payment_results
    @apr = params[:apr].to_f
    @years = params[:years].to_i
    @principal = params[:principal].to_f

    
    r = (@apr/100)/12
    n = @years*12

  if r == 0
    payment = (@principal/n).round(2)
  else
    payment = ((r*@principal)/(1-((1+r)**-n))).round(2)
  end
  
  @formatted_apr = "#{format('%.4f', @apr)}%"
  @formatted_principal = "$#{format('%.2f', @principal).to_s.gsub(/(\d)(?=(\d{3})+\.)/, '\\1,')}"
  @formatted_payment = "$#{format('%.2f', payment).to_s.gsub(/(\d)(?=(\d{3})+\.)/, '\\1,')}" 

  end

  def random_form
  end

  def random_results
    @minimum = params[:minimum].to_f
    @maximum = params[:maximum].to_f

    @random = rand(@minimum..@maximum)

  end
  


end
