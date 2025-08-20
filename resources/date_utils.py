from datetime import datetime

def convert_date_string(date_string, input_format="mm/dd/yyyy", output_format="mm/dd/yyyy"):
    """
    Converte uma data no formato especificado.
    """
    try:
        # Converte a string para um objeto datetime usando o formato informado
        date_obj = datetime.strptime(date_string, input_format)
        # Retorna a data no formato desejado
        return date_obj.strftime(output_format)
    except ValueError as e:
        raise ValueError(f"Data inválida: {date_string}. Erro: {e}")
