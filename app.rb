require_relative 'config/environment'

class App < Sinatra::Base
  # This is a sample dynamic route.
  get "/reversename/:name" do
    @user_name = params[:name]
    "Hello #{@user_name.reverse} !"
  end

  get "/square/:x" do
    @x = params[:x].to_i

    "#{@x * @x}"
  end

  get '/say/:number/:phrase' do
    @n = params[:number].to_i
    @t = params[:phrase]
    @output = " "
    @n.times { @output = @output + " "+  @t}
    "#{@output}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1= params[:word1]
    @w2= params[:word2]
    @w3= params[:word3]
    @w4= params[:word4]
    @w5= params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end


  get '/:op/:n1/:n2' do
    @op= params[:op]
    @n1= params[:n1].to_i
    @n2= params[:n2].to_i
    if @op == "add"
      "#{@n1+@n2}"
    elsif @op == "subtract"
      "#{@n1-@n2}"
    elsif @op == "multiply"
      "#{@n1*@n2}"
    elsif @op == "divide"
      "#{@n1/@n2}"
    end
  end


end