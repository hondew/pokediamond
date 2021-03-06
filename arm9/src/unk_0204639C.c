#include "global.h"
#include "heap.h"
#include "unk_0204639C.h"

#pragma thumb on

struct UnkStruct_0204639C * FUN_0204639C(struct UnkSavStruct80 * r5, UnkStruct_0204639C_cb r6, u32 * r7)
{
    struct UnkStruct_0204639C * ret = AllocFromHeapAtEnd(32, sizeof(struct UnkStruct_0204639C));
    ret->unk0 = 0;
    ret->unk4 = r6;
    ret->unk8 = 0;
    ret->unkC = r7;
    ret->unk10 = NULL;
    ret->unk14 = NULL;
    ret->unk18 = r5;
    ret->unk1C = AllocFromHeapAtEnd(32, 4);
    return ret;
}

void FUN_020463CC(struct UnkSavStruct80 * r5, UnkStruct_0204639C_cb r4, u32 * r6)
{
    GF_ASSERT(r5->unk10 == NULL);
    r5->unk10 = FUN_0204639C(r5, r4, r6);
}

void FUN_020463EC(struct UnkStruct_0204639C * r4, UnkStruct_0204639C_cb r1, u32 * r2)
{
    r4->unk4 = r1;
    r4->unk8 = 0;
    r4->unkC = r2;
    if (r4->unk14 != NULL || r4->unk14 != NULL)
    {
        FreeToHeap(r4->unk14);
        r4->unk10 = NULL;
        r4->unk14 = NULL;
    }
}

void FUN_0204640C(struct UnkStruct_0204639C * r4, UnkStruct_0204639C_cb r1, u32 * r2)
{
    struct UnkStruct_0204639C * r0 = FUN_0204639C(r4->unk18, r1, r2);
    r0->unk0 = r4;
    r4->unk18->unk10 = r0;
}

BOOL FUN_02046420(struct UnkStruct_0204639C * r5)
{
    if (r5->unk10 == NULL)
        return FALSE;
    while (r5->unk10->unk4(r5->unk10) == TRUE)
    {
        struct UnkStruct_0204639C * r4 = r5->unk10->unk0;
        if (r5->unk10->unk14 != NULL)
            FreeToHeap(r5->unk10->unk14);
        FreeToHeap(r5->unk10->unk1C);
        FreeToHeap(r5->unk10);
        r5->unk10 = r4;
        if (r4 == NULL)
            return TRUE;
    }
    return FALSE;
}

BOOL FUN_0204646C(struct UnkStruct_0204639C * r0)
{
    return (r0->unk10 != NULL);
}

BOOL FUN_0204647C(void * r4)
{
    return (FUN_0203739C(r4) || FUN_020373C4(r4));
}

void FUN_0204649C(void * r0)
{
    LoadOverlay_MODULE_05(r0);
}

BOOL FUN_020464A4(void * r0)
{
    return (FUN_020373AC(r0) != FALSE);
}

BOOL FUN_020464B8(struct UnkStruct_0204639C * r4)
{
    struct UnkSavStruct80 * r5 = FUN_02046528(r4);
    u32 * r4_2 = FUN_0204652C(r4);
    switch (r4_2[0])
    {
    case 0:
        FUN_020373D4(r5, r4_2[1], r4_2[2]);
        r4_2[0]++;
        break;
    case 1:
        if (!FUN_0204647C(r5))
        {
            FreeToHeap(r4_2);
            return TRUE;
        }
        break;
    }
    return FALSE;
}

void FUN_02046500(struct UnkStruct_0204639C * r6, u32 r5, u32 r4)
{
    u32 * r2 = AllocFromHeapAtEnd(32, 3 * sizeof(u32));
    r2[0] = 0;
    r2[1] = r5;
    r2[2] = r4;
    FUN_0204640C(r6, FUN_020464B8, r2);
}

struct UnkSavStruct80 * FUN_02046528(struct UnkStruct_0204639C * r0)
{
    return r0->unk18;
}

u32 * FUN_0204652C(struct UnkStruct_0204639C * r0)
{
    return r0->unkC;
}

u32 * FUN_02046530(struct UnkStruct_0204639C * r0)
{
    return &r0->unk8;
}

u32 FUN_02046534(struct UnkStruct_0204639C * r0)
{
    return *r0->unk1C;
}
