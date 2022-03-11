class Current < ActiveRecord::Base
    # makes Current.user accessible in view files.
     attribute :user
end