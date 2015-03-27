class MultiDelegator
  VERSION = '0.0.2'

  def initialize(*delegatees)
    @delegatees = delegatees
  end

private

  def method_missing(meth, *a, &b)
    super unless self.respond_to?(meth)
    @delegatees.map do |delegatee|
      delegatee.send(meth, *a, &b)
    end
  end

  def respond_to_missing?(meth, incl_private=false)
    @delegatees.all? do |delegatee|
      delegatee.respond_to?(meth, incl_private)
    end || super
  end

end
