
#include <cstdint>

static uint32_t CRCTable[256]{ 0 };

static void CRC32_init(void)
{
	uint32_t crc32 = 1;
	for (unsigned int i = 128; i; i >>= 1) {
		crc32 = (crc32 >> 1) ^ (crc32 & 1 ? 0xedb88320 : 0);
		for (unsigned int j = 0; j < 256; j += 2*i)
        	CRCTable[i + j] = crc32 ^ CRCTable[j];
	}
}

#include <print>

int main()
{
    CRC32_init();

    std::println("type table is array (0 to 255) of unsigned(31 downto 0);\n");
    std::print("signal crc_32_table : table := (");

    for(int i = 0; i < 255; i++) {
        std::print("{}, ", CRCTable[i]);
    }
    std::print("{});", CRCTable[255]);
}
