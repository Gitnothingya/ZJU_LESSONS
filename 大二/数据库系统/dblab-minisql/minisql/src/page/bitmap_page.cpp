#include "page/bitmap_page.h"

template<size_t PageSize>
bool BitmapPage<PageSize>::AllocatePage(uint32_t &page_offset) {
    size_t maxsize = GetMaxSupportedSize();
    if(page_allocated_ == maxsize)    //����
        return false;

    //û������ʼ����
    page_allocated_ ++;                             //�ѷ����ҳ����1

    page_offset = next_free_page_;                 //�߼�����
    uint32_t byte_index = page_offset / 8;
    uint32_t bit_index = page_offset % 8;
    bytes[byte_index] |= (1 << bit_index);          //��λ��1

    //�ҵ���һ����ҳindex
    for(uint32_t i = next_free_page_ + 1; i < maxsize; i++)
    {
        if(IsPageFree(i % (maxsize)))
        {
            next_free_page_ = i;
            break;
        }
    }

    if(page_allocated_ == GetMaxSupportedSize())
        next_free_page_ = maxsize;            //�ó���Ч

    return true;
}

template<size_t PageSize>
bool BitmapPage<PageSize>::DeAllocatePage(uint32_t page_offset) {
    if(IsPageFree(page_offset))                 //���ܻ��տ���ҳ 
        return false;

    uint32_t byte_index = page_offset / 8;
    uint32_t bit_index = page_offset % 8;
    bytes[byte_index] ^= (1 << bit_index);      //��λ��0
    page_allocated_--;

    if(next_free_page_ == 8 * MAX_CHARS)        //�������ɾ��
        next_free_page_ = page_offset;
    return true;
}

template<size_t PageSize>
bool BitmapPage<PageSize>::IsPageFree(uint32_t page_offset) const {
    uint32_t byte_index = page_offset / 8;
    uint32_t bit_index = page_offset % 8;
    return IsPageFreeLow(byte_index, bit_index);
}

template<size_t PageSize>
bool BitmapPage<PageSize>::IsPageFreeLow(uint32_t byte_index, uint8_t bit_index) const {
    std::bitset<8> b = bytes[byte_index];
    if(b.test(bit_index))   //�жϸ�bit�Ƿ�Ϊ1
        return false;

    return true;
}

template
class BitmapPage<64>;

template
class BitmapPage<128>;

template
class BitmapPage<256>;

template
class BitmapPage<512>;

template
class BitmapPage<1024>;

template
class BitmapPage<2048>;

template
class BitmapPage<4096>;