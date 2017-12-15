class HangController < ApplicationController
  def index
    one_megabyte = 1024 * 1024
    bytes_to_read = 100 * one_megabyte

    IO.read("/dev/random", bytes_to_read).size
    render :body => "done", :layout => false
  end
end
