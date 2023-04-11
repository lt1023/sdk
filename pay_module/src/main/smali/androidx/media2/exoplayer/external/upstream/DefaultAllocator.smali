.class public final Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/Allocator;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final AVAILABLE_EXTRA_CAPACITY:I = 0x64


# instance fields
.field private allocatedCount:I

.field private availableAllocations:[Landroidx/media2/exoplayer/external/upstream/Allocation;

.field private availableCount:I

.field private final individualAllocationSize:I

.field private final initialAllocationBlock:[B

.field private final singleAllocationReleaseHolder:[Landroidx/media2/exoplayer/external/upstream/Allocation;

.field private targetBufferSize:I

.field private final trimOnReset:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "trimOnReset"    # Z
    .param p2, "individualAllocationSize"    # I

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;-><init>(ZII)V

    .line 54
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 6
    .param p1, "trimOnReset"    # Z
    .param p2, "individualAllocationSize"    # I
    .param p3, "initialAllocationCount"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 69
    if-ltz p3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 70
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->trimOnReset:Z

    .line 71
    iput p2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->individualAllocationSize:I

    .line 72
    iput p3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableCount:I

    .line 73
    add-int/lit8 v0, p3, 0x64

    new-array v0, v0, [Landroidx/media2/exoplayer/external/upstream/Allocation;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media2/exoplayer/external/upstream/Allocation;

    .line 74
    if-lez p3, :cond_3

    .line 75
    mul-int v0, p3, p2

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->initialAllocationBlock:[B

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 77
    mul-int v2, v0, p2

    .line 78
    .local v2, "allocationOffset":I
    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media2/exoplayer/external/upstream/Allocation;

    new-instance v4, Landroidx/media2/exoplayer/external/upstream/Allocation;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->initialAllocationBlock:[B

    invoke-direct {v4, v5, v2}, Landroidx/media2/exoplayer/external/upstream/Allocation;-><init>([BI)V

    aput-object v4, v3, v0

    .line 76
    .end local v2    # "allocationOffset":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    goto :goto_2

    .line 81
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->initialAllocationBlock:[B

    .line 83
    :goto_2
    new-array v0, v1, [Landroidx/media2/exoplayer/external/upstream/Allocation;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->singleAllocationReleaseHolder:[Landroidx/media2/exoplayer/external/upstream/Allocation;

    .line 84
    return-void
.end method


# virtual methods
.method public declared-synchronized allocate()Landroidx/media2/exoplayer/external/upstream/Allocation;
    .locals 4

    monitor-enter p0

    .line 102
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->allocatedCount:I

    .line 104
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableCount:I

    if-lez v0, :cond_0

    .line 105
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media2/exoplayer/external/upstream/Allocation;

    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableCount:I

    aget-object v0, v0, v1

    .line 106
    .local v0, "allocation":Landroidx/media2/exoplayer/external/upstream/Allocation;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media2/exoplayer/external/upstream/Allocation;

    iget v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableCount:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_0

    .line 108
    .end local v0    # "allocation":Landroidx/media2/exoplayer/external/upstream/Allocation;
    .end local p0    # "this":Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/Allocation;

    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->individualAllocationSize:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/upstream/Allocation;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .restart local v0    # "allocation":Landroidx/media2/exoplayer/external/upstream/Allocation;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 101
    .end local v0    # "allocation":Landroidx/media2/exoplayer/external/upstream/Allocation;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIndividualAllocationLength()I
    .locals 1

    .line 182
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->individualAllocationSize:I

    return v0
.end method

.method public declared-synchronized getTotalBytesAllocated()I
    .locals 2

    monitor-enter p0

    .line 177
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->allocatedCount:I

    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int v0, v0, v1

    monitor-exit p0

    return v0

    .end local p0    # "this":Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Landroidx/media2/exoplayer/external/upstream/Allocation;)V
    .locals 2
    .param p1, "allocation"    # Landroidx/media2/exoplayer/external/upstream/Allocation;

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->singleAllocationReleaseHolder:[Landroidx/media2/exoplayer/external/upstream/Allocation;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 116
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->singleAllocationReleaseHolder:[Landroidx/media2/exoplayer/external/upstream/Allocation;

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->release([Landroidx/media2/exoplayer/external/upstream/Allocation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 114
    .end local p0    # "this":Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;
    .end local p1    # "allocation":Landroidx/media2/exoplayer/external/upstream/Allocation;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release([Landroidx/media2/exoplayer/external/upstream/Allocation;)V
    .locals 6
    .param p1, "allocations"    # [Landroidx/media2/exoplayer/external/upstream/Allocation;

    monitor-enter p0

    .line 121
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableCount:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media2/exoplayer/external/upstream/Allocation;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media2/exoplayer/external/upstream/Allocation;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media2/exoplayer/external/upstream/Allocation;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableCount:I

    array-length v3, p1

    add-int/2addr v2, v3

    .line 123
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 122
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/upstream/Allocation;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media2/exoplayer/external/upstream/Allocation;

    goto :goto_0

    .line 121
    .end local p0    # "this":Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;
    :cond_0
    nop

    .line 125
    :goto_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 126
    .local v2, "allocation":Landroidx/media2/exoplayer/external/upstream/Allocation;
    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media2/exoplayer/external/upstream/Allocation;

    iget v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableCount:I

    aput-object v2, v3, v4

    .line 125
    .end local v2    # "allocation":Landroidx/media2/exoplayer/external/upstream/Allocation;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    :cond_1
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->allocatedCount:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->allocatedCount:I

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 120
    .end local p1    # "allocations":[Landroidx/media2/exoplayer/external/upstream/Allocation;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 87
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->trimOnReset:Z

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->setTargetBufferSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    .end local p0    # "this":Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;
    :cond_0
    nop

    .line 90
    :goto_0
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTargetBufferSize(I)V
    .locals 1
    .param p1, "targetBufferSize"    # I

    monitor-enter p0

    .line 93
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->targetBufferSize:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 94
    .local v0, "targetBufferSizeReduced":Z
    :goto_0
    iput p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->targetBufferSize:I

    .line 95
    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->trim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 95
    .end local p0    # "this":Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;
    :cond_1
    nop

    .line 98
    :goto_1
    monitor-exit p0

    return-void

    .line 92
    .end local v0    # "targetBufferSizeReduced":Z
    .end local p1    # "targetBufferSize":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized trim()V
    .locals 8

    monitor-enter p0

    .line 135
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->targetBufferSize:I

    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->individualAllocationSize:I

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->ceilDivide(II)I

    move-result v0

    .line 136
    .local v0, "targetAllocationCount":I
    const/4 v1, 0x0

    iget v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->allocatedCount:I

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 137
    .local v1, "targetAvailableCount":I
    iget v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    .line 139
    monitor-exit p0

    return-void

    .line 142
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eqz v2, :cond_5

    .line 146
    const/4 v2, 0x0

    .line 147
    .local v2, "lowIndex":I
    iget v3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v3, v3, -0x1

    .line 148
    .local v3, "highIndex":I
    :goto_0
    if-gt v2, v3, :cond_3

    .line 149
    iget-object v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media2/exoplayer/external/upstream/Allocation;

    aget-object v4, v4, v2

    .line 150
    .local v4, "lowAllocation":Landroidx/media2/exoplayer/external/upstream/Allocation;
    iget-object v5, v4, Landroidx/media2/exoplayer/external/upstream/Allocation;->data:[B

    iget-object v6, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-ne v5, v6, :cond_1

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 153
    :cond_1
    iget-object v5, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media2/exoplayer/external/upstream/Allocation;

    aget-object v5, v5, v3

    .line 154
    .local v5, "highAllocation":Landroidx/media2/exoplayer/external/upstream/Allocation;
    iget-object v6, v5, Landroidx/media2/exoplayer/external/upstream/Allocation;->data:[B

    iget-object v7, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v6, v7, :cond_2

    .line 155
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 157
    :cond_2
    iget-object v6, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media2/exoplayer/external/upstream/Allocation;

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "lowIndex":I
    .local v7, "lowIndex":I
    aput-object v5, v6, v2

    .line 158
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media2/exoplayer/external/upstream/Allocation;

    add-int/lit8 v6, v3, -0x1

    .end local v3    # "highIndex":I
    .local v6, "highIndex":I
    aput-object v4, v2, v3

    move v3, v6

    move v2, v7

    .line 161
    .end local v4    # "lowAllocation":Landroidx/media2/exoplayer/external/upstream/Allocation;
    .end local v5    # "highAllocation":Landroidx/media2/exoplayer/external/upstream/Allocation;
    .end local v6    # "highIndex":I
    .end local v7    # "lowIndex":I
    .restart local v2    # "lowIndex":I
    .restart local v3    # "highIndex":I
    :goto_1
    goto :goto_0

    .line 163
    .end local p0    # "this":Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v1, v4

    .line 164
    iget v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v1, v4, :cond_4

    .line 166
    monitor-exit p0

    return-void

    .line 164
    :cond_4
    goto :goto_2

    .line 142
    .end local v2    # "lowIndex":I
    .end local v3    # "highIndex":I
    :cond_5
    nop

    .line 171
    :goto_2
    :try_start_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media2/exoplayer/external/upstream/Allocation;

    iget v3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableCount:I

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 172
    iput v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->availableCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 134
    .end local v0    # "targetAllocationCount":I
    .end local v1    # "targetAvailableCount":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method
