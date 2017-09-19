class TicketsController < ApplicationController


  def index
  end

  def create
@ticket = Ticket.new(ticket_params)
@tiket.save
@ticket.init = DateTime.now
  end

  def new
  end

  def show

    @ticket = Ticket.find(params[:id])
  end

  def edit
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
