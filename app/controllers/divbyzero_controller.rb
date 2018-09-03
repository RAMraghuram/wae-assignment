class DivbyzeroController < ApplicationController
  def ques1

      logger.error('hey your about to divide by zero.')

      anything = 1995/0

  end
end
