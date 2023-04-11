.class public final Landroidx/media2/exoplayer/external/util/TimedValueQueue;
.super Ljava/lang/Object;
.source "TimedValueQueue.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final INITIAL_BUFFER_SIZE:I = 0xa


# instance fields
.field private first:I

.field private size:I

.field private timestamps:[J

.field private values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    .local p0, "this":Landroidx/media2/exoplayer/external/util/TimedValueQueue;, "Landroidx/media2/exoplayer/external/util/TimedValueQueue<TV;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;-><init>(I)V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialBufferSize"    # I

    .line 45
    .local p0, "this":Landroidx/media2/exoplayer/external/util/TimedValueQueue;, "Landroidx/media2/exoplayer/external/util/TimedValueQueue<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->timestamps:[J

    .line 47
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->values:[Ljava/lang/Object;

    .line 48
    return-void
.end method

.method private addUnchecked(JLjava/lang/Object;)V
    .locals 4
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .line 159
    .local p0, "this":Landroidx/media2/exoplayer/external/util/TimedValueQueue;, "Landroidx/media2/exoplayer/external/util/TimedValueQueue<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->first:I

    iget v1, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->size:I

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->values:[Ljava/lang/Object;

    array-length v3, v2

    rem-int/2addr v0, v3

    .line 160
    .local v0, "next":I
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->timestamps:[J

    aput-wide p1, v3, v0

    .line 161
    aput-object p3, v2, v0

    .line 162
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->size:I

    .line 163
    return-void
.end method

.method private clearBufferOnTimeDiscontinuity(J)V
    .locals 4
    .param p1, "timestamp"    # J

    .line 127
    .local p0, "this":Landroidx/media2/exoplayer/external/util/TimedValueQueue;, "Landroidx/media2/exoplayer/external/util/TimedValueQueue<TV;>;"
    iget v0, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->size:I

    if-lez v0, :cond_1

    .line 128
    iget v1, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->first:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->values:[Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr v1, v0

    .line 129
    .local v1, "last":I
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->timestamps:[J

    aget-wide v2, v0, v1

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->clear()V

    goto :goto_0

    .line 129
    :cond_0
    goto :goto_0

    .line 127
    .end local v1    # "last":I
    :cond_1
    nop

    .line 133
    :goto_0
    return-void
.end method

.method private doubleCapacityIfFull()V
    .locals 8

    .line 136
    .local p0, "this":Landroidx/media2/exoplayer/external/util/TimedValueQueue;, "Landroidx/media2/exoplayer/external/util/TimedValueQueue<TV;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->values:[Ljava/lang/Object;

    array-length v0, v0

    .line 137
    .local v0, "capacity":I
    iget v1, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->size:I

    if-ge v1, v0, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 141
    .local v1, "newCapacity":I
    new-array v2, v1, [J

    .line 142
    .local v2, "newTimestamps":[J
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->newArray(I)[Ljava/lang/Object;

    move-result-object v3

    .line 145
    .local v3, "newValues":[Ljava/lang/Object;, "[TV;"
    iget v4, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->first:I

    sub-int v5, v0, v4

    .line 146
    .local v5, "length":I
    iget-object v6, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->timestamps:[J

    const/4 v7, 0x0

    invoke-static {v6, v4, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->values:[Ljava/lang/Object;

    iget v6, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->first:I

    invoke-static {v4, v6, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget v4, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->first:I

    if-lez v4, :cond_1

    .line 150
    iget-object v6, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->timestamps:[J

    invoke-static {v6, v7, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->values:[Ljava/lang/Object;

    iget v6, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->first:I

    invoke-static {v4, v7, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 149
    :cond_1
    nop

    .line 153
    :goto_0
    iput-object v2, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->timestamps:[J

    .line 154
    iput-object v3, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->values:[Ljava/lang/Object;

    .line 155
    iput v7, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->first:I

    .line 156
    return-void
.end method

.method private static newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)[TV;"
        }
    .end annotation

    .line 167
    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method

.method private poll(JZ)Ljava/lang/Object;
    .locals 8
    .param p1, "timestamp"    # J
    .param p3, "onlyOlder"    # Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)TV;"
        }
    .end annotation

    .line 110
    .local p0, "this":Landroidx/media2/exoplayer/external/util/TimedValueQueue;, "Landroidx/media2/exoplayer/external/util/TimedValueQueue<TV;>;"
    const/4 v0, 0x0

    .line 111
    .local v0, "value":Ljava/lang/Object;, "TV;"
    const-wide v1, 0x7fffffffffffffffL

    .line 112
    .local v1, "previousTimeDiff":J
    :goto_0
    iget v3, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->size:I

    if-lez v3, :cond_2

    .line 113
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->timestamps:[J

    iget v4, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->first:I

    aget-wide v4, v3, v4

    sub-long v4, p1, v4

    .line 114
    .local v4, "timeDiff":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    if-nez p3, :cond_0

    neg-long v6, v4

    cmp-long v3, v6, v1

    if-ltz v3, :cond_1

    .line 115
    goto :goto_1

    .line 114
    :cond_0
    goto :goto_1

    .line 117
    :cond_1
    move-wide v1, v4

    .line 118
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->values:[Ljava/lang/Object;

    iget v6, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->first:I

    aget-object v0, v3, v6

    .line 119
    const/4 v7, 0x0

    aput-object v7, v3, v6

    .line 120
    add-int/lit8 v6, v6, 0x1

    array-length v3, v3

    rem-int/2addr v6, v3

    iput v6, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->first:I

    .line 121
    iget v3, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->size:I

    .line 122
    .end local v4    # "timeDiff":J
    goto :goto_0

    .line 112
    :cond_2
    nop

    .line 123
    :goto_1
    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(JLjava/lang/Object;)V
    .locals 0
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .local p0, "this":Landroidx/media2/exoplayer/external/util/TimedValueQueue;, "Landroidx/media2/exoplayer/external/util/TimedValueQueue<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 56
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->clearBufferOnTimeDiscontinuity(J)V

    .line 57
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->doubleCapacityIfFull()V

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->addUnchecked(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 55
    .end local p0    # "this":Landroidx/media2/exoplayer/external/util/TimedValueQueue;, "Landroidx/media2/exoplayer/external/util/TimedValueQueue<TV;>;"
    .end local p1    # "timestamp":J
    .end local p3    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 2

    .local p0, "this":Landroidx/media2/exoplayer/external/util/TimedValueQueue;, "Landroidx/media2/exoplayer/external/util/TimedValueQueue<TV;>;"
    monitor-enter p0

    .line 63
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->first:I

    .line 64
    iput v0, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->size:I

    .line 65
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 62
    .end local p0    # "this":Landroidx/media2/exoplayer/external/util/TimedValueQueue;, "Landroidx/media2/exoplayer/external/util/TimedValueQueue<TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized poll(J)Ljava/lang/Object;
    .locals 1
    .param p1, "timestamp"    # J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .local p0, "this":Landroidx/media2/exoplayer/external/util/TimedValueQueue;, "Landroidx/media2/exoplayer/external/util/TimedValueQueue<TV;>;"
    monitor-enter p0

    .line 95
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->poll(JZ)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Landroidx/media2/exoplayer/external/util/TimedValueQueue;, "Landroidx/media2/exoplayer/external/util/TimedValueQueue<TV;>;"
    .end local p1    # "timestamp":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pollFloor(J)Ljava/lang/Object;
    .locals 1
    .param p1, "timestamp"    # J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .local p0, "this":Landroidx/media2/exoplayer/external/util/TimedValueQueue;, "Landroidx/media2/exoplayer/external/util/TimedValueQueue<TV;>;"
    monitor-enter p0

    .line 83
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->poll(JZ)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Landroidx/media2/exoplayer/external/util/TimedValueQueue;, "Landroidx/media2/exoplayer/external/util/TimedValueQueue<TV;>;"
    .end local p1    # "timestamp":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    .local p0, "this":Landroidx/media2/exoplayer/external/util/TimedValueQueue;, "Landroidx/media2/exoplayer/external/util/TimedValueQueue<TV;>;"
    monitor-enter p0

    .line 70
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Landroidx/media2/exoplayer/external/util/TimedValueQueue;, "Landroidx/media2/exoplayer/external/util/TimedValueQueue<TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
