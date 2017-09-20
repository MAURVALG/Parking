class TicketsController < ApplicationController


  def index
    @tickets = Ticket.all
  end


  def new
    @ticket = Ticket.new
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def create
@ticket = Ticket.new(ticket_params)
@ticket.init = DateTime.now
@ticket.exit = DateTime.now

  if @ticket.save
  redirect_to @ticket
   else
  render'new'
    end

  end



  def show
    @ticket = Ticket.find(params[:id])
  end





  def update
  end

  def payment
  end

private
  def ticket_params
    params.require(:ticket).permit(:plate, :vtype)
  end

end
