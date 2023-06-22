namespace WebApiLiberaCredito.Util
{
    public static class EnumHelper
    {
        public static T GetEnumValue<T>(string str) where T : struct, IConvertible
        {
            Type enumType = typeof(T);
            if (!enumType.IsEnum)
            {
                throw new Exception("Tipo solicitado não é um enumerador.");
            }
            return Enum.TryParse(str, true, out T val) ? val : default;
        }

        public static T GetEnumValue<T>(int intValue) where T : struct, IConvertible
        {
            Type enumType = typeof(T);
            if (!enumType.IsEnum)
            {
                throw new Exception("Tipo solicitado não é um enumerador.");
            }

            return (T)Enum.ToObject(enumType, intValue);
        }
    }
}
