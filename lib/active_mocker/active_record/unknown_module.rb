module ActiveMocker

  module UnknownModule

    def include(_module)
      begin
        super _module
      rescue => e
        Logger_.debug e
        Logger_.debug "ActiveMocker :: Can't include module #{_module} from class #{self.name}.\n #{caller}"

      end
    end

    def extend(_module)
      begin
        super _module
      rescue
        Logger_.debug "ActiveMocker :: Can't extend module #{_module} from class #{self.name}..\n #{caller}"
      end
    end

  end

end