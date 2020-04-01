##
# Core Ext - Array
#
# Alias di metodi della classe Array.

class Array
  alias         :per_ogni             :each
  alias         :per_ognuno           :each
  alias         :per_ognuna           :each
  alias         :mappa                :map
  alias         :vuoto?               :empty?
  alias         :vuota?               :empty?
  alias         :primo                :first
  alias         :prima                :first
  alias         :ultimo               :last
  alias         :ultima               :last
  alias         :uno_a_caso           :sample
  alias         :una_a_caso           :sample
  alias         :prendine_a_caso      :sample
  alias         :mescola              :shuffle
  alias         :unisci               :join
  alias         :appiattisci          :flatten
  alias         :compatta             :compact
  alias         :conteggio            :count
  alias         :tutti?               :all?
  alias         :tutte?               :all?
  alias         :alcuni?              :any?
  alias         :alcune?              :any?
  alias         :almeno_uno?          :any?
  alias         :nessuno?             :none?
  alias         :nessuna?             :none?

  def esiste?
    !nil? && !empty?
  end

  def pizzica(method_name)
    self.map do |element|
      if element.respond_to? method_name
        element.send method_name
      elsif element.is_a? Hash
        element[method_name]
      else
        raise ArgumentError, "Array elements do not respond to #{method_name}."
      end
    end
  end
end

Lista = Array