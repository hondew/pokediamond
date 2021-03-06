#include "global.h"
#include "bag.h"
#include "heap.h"
#include "main.h"
#include "MI_memory.h"
#include "player_data.h"
#include "script.h"
#include "unk_0208890C.h"

extern struct SaveBlock2* ScriptEnvironment_GetSav2Ptr(struct UnkSavStruct80*);
extern void* FUN_02028048(struct SaveBlock2* sav2);
extern void FUN_020373D4(struct UnkSavStruct80*, struct Unk21DBE18*, void*);
extern BOOL FUN_020889B0(struct UnkStruct_02006234*, u32*);
extern BOOL FUN_02088A00(struct UnkStruct_02006234*, u32*);
extern BOOL FUN_02088A78(struct UnkStruct_02006234*, u32*);

const struct Unk21DBE18 UNK_020FD6E4 = {
    FUN_020889B0,
    FUN_02088A00,
    FUN_02088A78,
    0xFFFFFFFF,
};

THUMB_FUNC struct UnkStruct_0208890C* FUN_0208890C(void* a0, struct SaveBlock2* sav2, u32 heap_id, void* a3)
{
    struct UnkStruct_0208890C* ret = AllocFromHeap(heap_id, sizeof(struct UnkStruct_0208890C));
    MI_CpuFill8(ret, 0, sizeof(struct UnkStruct_0208890C));

    ret->sav2 = sav2;
    ret->unk8 = FUN_02028048(sav2);
    ret->player = Sav2_PlayerData_GetProfileAddr(sav2);
    ret->bag = Sav2_Bag_get(sav2);
    ret->options = Sav2_PlayerData_GetOptionsAddr(sav2);
    ret->unk1C = a3;
    ret->unk4 = a0;

    return ret;
}

THUMB_FUNC void FUN_02088950(struct UnkSavStruct80* unk, struct UnkStruct_0208890C* unk2)
{
    FUN_020373D4(unk, (struct Unk21DBE18*)&UNK_020FD6E4, unk2);
}

THUMB_FUNC struct UnkStruct_0208890C* FUN_02088960(struct UnkSavStruct80* unk, void* a1, u32 heap_id)
{
    struct SaveBlock2* sav2 = ScriptEnvironment_GetSav2Ptr(unk);
    struct UnkStruct_0208890C* ret = FUN_0208890C(a1, sav2, heap_id, unk->unk98);

    FUN_02088950(unk, ret);

    return ret;
}
