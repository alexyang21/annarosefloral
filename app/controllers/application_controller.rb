class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def sumproduct(array1, array2)
    # Check that arrays are same length
    n = array1.length
    if n == array2.length
      
      # Initialize variables
      sum = 0
      i = 0

      # Loop through and multiple the matching array elements
      while i < n
        sum += array1[i] * array2[i]
        i += 1
      end
      sum
    end
  end
end
