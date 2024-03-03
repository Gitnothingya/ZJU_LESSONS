#ifndef MINISQL_DISK_FILE_META_PAGE_H
#define MINISQL_DISK_FILE_META_PAGE_H

#include <cstdint>

#include "page/bitmap_page.h"

static constexpr page_id_t MAX_VALID_PAGE_ID = (PAGE_SIZE - 8) / 4 * BitmapPage<PAGE_SIZE>::GetMaxSupportedSize();  //表示最大的(不能取)有效逻辑页id，-8是减去两个uint32_t

class DiskFileMetaPage {
public:
  uint32_t GetExtentNums() {
    return num_extents_;
  }

  uint32_t GetAllocatedPages() {
    return num_allocated_pages_;
  }

  uint32_t GetExtentUsedPage(uint32_t extent_id) {
    if (extent_id >= num_extents_) {
      return 0;
    }
    return extent_used_page_[extent_id];
  }

public:
  uint32_t num_allocated_pages_{0}; // 已经分配的总页数
  uint32_t num_extents_{0};   // each extent consists with a bit map and BIT_MAP_SIZE pages
  uint32_t extent_used_page_[0];  //每个分区中已经分配的页的数量
};

#endif //MINISQL_DISK_FILE_META_PAGE_H
