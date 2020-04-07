##
# Core Ext - Hash
#
# Alias di metodi della classe Hash.

class Hash
  alias         :per_ogni             :each
  alias         :per_ognuno           :each
  alias         :per_ognuna           :each
  alias         :chiavi               :keys
  alias         :valori               :values
  alias         :mappa                :map
  alias         :vuoto?               :empty?
  alias         :vuota?               :empty?
  alias         :ha_chiave?           :has_key?
  alias         :ottieni              :fetch
  alias         :prendi               :fetch
  alias         :deposita             :store
  alias         :scava                :dig
  alias         :fondi                :merge
  alias         :fondi!               :merge!
  alias         :trasforma_chiavi     :transform_keys
  alias         :trasforma_valori     :transform_values
  alias         :seleziona            :select
  alias         :seleziona!           :select!
  alias         :scarta               :reject
  alias         :scarta!              :reject!
  alias         :rimuovi              :delete

  def esiste?
    !nil? && !empty?
  end
  alias         :specificato?         :esiste?
  alias         :specificata?         :esiste?

  def non_esiste?
    !esiste?
  end
  alias         :non_specificato?     :non_esiste?
  alias         :non_specificata?     :non_esiste?

  def non_ha_chiave?(key)
    !has_key? key
  end
end

Mappa = Hash