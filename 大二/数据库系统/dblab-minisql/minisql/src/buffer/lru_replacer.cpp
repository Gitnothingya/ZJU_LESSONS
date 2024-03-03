#include "buffer/lru_replacer.h"

LRUReplacer::LRUReplacer(size_t num_pages) {





}

LRUReplacer::~LRUReplacer() = default;

bool LRUReplacer::Victim(frame_id_t *frame_id) {
	if(lru_list_.size() == 0) return false;

	*frame_id = lru_list_.front();
	lru_list_.pop_front();
	return true;
}

void LRUReplacer::Pin(frame_id_t frame_id) {
	lru_list_.remove(frame_id);
}

void LRUReplacer::Unpin(frame_id_t frame_id) {
	list<frame_id_t>::iterator p = find(lru_list_.begin(), lru_list_.end(), frame_id);
	if(p == lru_list_.end())
		lru_list_.push_back(frame_id);
}

size_t LRUReplacer::Size() {
	return lru_list_.size();
}