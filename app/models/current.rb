class Current < ActiveRecord::Base
    # makes Current.user accessible in view files.
     attribute: User.current
end