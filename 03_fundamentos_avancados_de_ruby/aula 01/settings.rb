class Settings
  def add(key, value, **kwargs)
    define_singleton_method(key) { value }

    return unless kwargs[:alias]

    define_singleton_method(kwargs[:alias]) { value }
  end

  def method_missing(method_name, *_args)
    "Configuração '#{method_name}' não existe."
  end
end
