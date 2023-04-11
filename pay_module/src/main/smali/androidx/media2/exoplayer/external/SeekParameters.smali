.class public final Landroidx/media2/exoplayer/external/SeekParameters;
.super Ljava/lang/Object;
.source "SeekParameters.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final CLOSEST_SYNC:Landroidx/media2/exoplayer/external/SeekParameters;

.field public static final DEFAULT:Landroidx/media2/exoplayer/external/SeekParameters;

.field public static final EXACT:Landroidx/media2/exoplayer/external/SeekParameters;

.field public static final NEXT_SYNC:Landroidx/media2/exoplayer/external/SeekParameters;

.field public static final PREVIOUS_SYNC:Landroidx/media2/exoplayer/external/SeekParameters;


# instance fields
.field public final toleranceAfterUs:J

.field public final toleranceBeforeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 45
    new-instance v0, Landroidx/media2/exoplayer/external/SeekParameters;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Landroidx/media2/exoplayer/external/SeekParameters;-><init>(JJ)V

    sput-object v0, Landroidx/media2/exoplayer/external/SeekParameters;->EXACT:Landroidx/media2/exoplayer/external/SeekParameters;

    .line 47
    new-instance v0, Landroidx/media2/exoplayer/external/SeekParameters;

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {v0, v3, v4, v3, v4}, Landroidx/media2/exoplayer/external/SeekParameters;-><init>(JJ)V

    sput-object v0, Landroidx/media2/exoplayer/external/SeekParameters;->CLOSEST_SYNC:Landroidx/media2/exoplayer/external/SeekParameters;

    .line 50
    new-instance v0, Landroidx/media2/exoplayer/external/SeekParameters;

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/media2/exoplayer/external/SeekParameters;-><init>(JJ)V

    sput-object v0, Landroidx/media2/exoplayer/external/SeekParameters;->PREVIOUS_SYNC:Landroidx/media2/exoplayer/external/SeekParameters;

    .line 52
    new-instance v0, Landroidx/media2/exoplayer/external/SeekParameters;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/SeekParameters;-><init>(JJ)V

    sput-object v0, Landroidx/media2/exoplayer/external/SeekParameters;->NEXT_SYNC:Landroidx/media2/exoplayer/external/SeekParameters;

    .line 54
    sget-object v0, Landroidx/media2/exoplayer/external/SeekParameters;->EXACT:Landroidx/media2/exoplayer/external/SeekParameters;

    sput-object v0, Landroidx/media2/exoplayer/external/SeekParameters;->DEFAULT:Landroidx/media2/exoplayer/external/SeekParameters;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 5
    .param p1, "toleranceBeforeUs"    # J
    .param p3, "toleranceAfterUs"    # J

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 75
    cmp-long v4, p3, v2

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 76
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceBeforeUs:J

    .line 77
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceAfterUs:J

    .line 78
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 82
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 83
    return v0

    .line 85
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 88
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/SeekParameters;

    .line 89
    .local v2, "other":Landroidx/media2/exoplayer/external/SeekParameters;
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceBeforeUs:J

    iget-wide v5, v2, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceBeforeUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceAfterUs:J

    iget-wide v5, v2, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceAfterUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 85
    .end local v2    # "other":Landroidx/media2/exoplayer/external/SeekParameters;
    :cond_3
    :goto_1
    nop

    .line 86
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 95
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceBeforeUs:J

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceAfterUs:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method
