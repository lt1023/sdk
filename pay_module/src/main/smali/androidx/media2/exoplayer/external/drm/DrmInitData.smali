.class public final Landroidx/media2/exoplayer/external/drm/DrmInitData;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hashCode:I

.field public final schemeDataCount:I

.field private final schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

.field public final schemeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 255
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/drm/DrmInitData$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 149
    sget-object v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 150
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    array-length v0, v0

    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDataCount:I

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "schemeType"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p2, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    const/4 v0, 0x0

    new-array v1, v0, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    .line 116
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V
    .locals 1
    .param p1, "schemeType"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cloneSchemeDatas"    # Z
    .param p3, "schemeDatas"    # [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 136
    if-eqz p2, :cond_0

    .line 137
    invoke-virtual {p3}, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p3, v0

    check-cast p3, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    goto :goto_0

    .line 136
    :cond_0
    nop

    .line 139
    :goto_0
    iput-object p3, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 140
    array-length v0, p3

    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDataCount:I

    .line 143
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 144
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V
    .locals 1
    .param p1, "schemeType"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "schemeDatas"    # [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p1, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    const/4 v0, 0x0

    new-array v1, v0, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    .line 108
    return-void
.end method

.method public varargs constructor <init>([Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V
    .locals 1
    .param p1, "schemeDatas"    # [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    .line 123
    return-void
.end method

.method private static containsSchemeDataWithUuid(Ljava/util/ArrayList;ILjava/util/UUID;)Z
    .locals 2
    .param p1, "limit"    # I
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/UUID;",
            ")Z"
        }
    .end annotation

    .line 274
    .local p0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 275
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const/4 v1, 0x1

    return v1

    .line 274
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static createSessionCreationData(Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .locals 8
    .param p0, "manifestData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "mediaData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    const/4 v1, 0x0

    .line 66
    .local v1, "schemeType":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz p0, :cond_2

    .line 67
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 68
    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 69
    .local v6, "data":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->hasData()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 70
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_0
    nop

    .line 68
    .end local v6    # "data":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    .line 66
    :cond_2
    nop

    .line 75
    :goto_2
    if-eqz p1, :cond_6

    .line 76
    if-nez v1, :cond_3

    .line 77
    iget-object v1, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    goto :goto_3

    .line 76
    :cond_3
    nop

    .line 79
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 80
    .local v3, "manifestDatasCount":I
    iget-object v4, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    array-length v5, v4

    :goto_4
    if-ge v2, v5, :cond_5

    aget-object v6, v4, v2

    .line 81
    .restart local v6    # "data":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->hasData()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v6}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v7

    invoke-static {v0, v3, v7}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->containsSchemeDataWithUuid(Ljava/util/ArrayList;ILjava/util/UUID;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 82
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 81
    :cond_4
    nop

    .line 80
    .end local v6    # "data":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    goto :goto_6

    .line 75
    .end local v3    # "manifestDatasCount":I
    :cond_6
    nop

    .line 87
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    new-instance v2, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-direct {v2, v1, v0}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :goto_7
    return-object v2
.end method


# virtual methods
.method public compare(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)I
    .locals 2
    .param p1, "first"    # Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .param p2, "second"    # Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 238
    sget-object v0, Landroidx/media2/exoplayer/external/C;->UUID_NIL:Ljava/util/UUID;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/media2/exoplayer/external/C;->UUID_NIL:Ljava/util/UUID;

    invoke-static {p2}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 239
    :cond_1
    invoke-static {p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {p2}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    .line 238
    :goto_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 40
    check-cast p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    check-cast p2, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->compare(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)I

    move-result p1

    return p1
.end method

.method public copyWithSchemeType(Ljava/lang/String;)Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .locals 3
    .param p1, "schemeType"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 188
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    return-object p0

    .line 191
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-direct {v0, p1, v1, v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 225
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 226
    return v0

    .line 228
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 231
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 232
    .local v2, "other":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 233
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_0

    .line 232
    :cond_3
    nop

    .line 233
    :goto_0
    const/4 v0, 0x0

    .line 232
    :goto_1
    return v0

    .line 228
    .end local v2    # "other":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    :cond_4
    :goto_2
    nop

    .line 229
    return v1
.end method

.method public get(I)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .locals 1
    .param p1, "index"    # I

    .line 178
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public get(Ljava/util/UUID;)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .locals 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 164
    .local v3, "schemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    invoke-virtual {v3, p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    return-object v3

    .line 164
    :cond_0
    nop

    .line 163
    .end local v3    # "schemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 215
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->hashCode:I

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 217
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 218
    .end local v0    # "result":I
    .local v1, "result":I
    iput v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->hashCode:I

    goto :goto_1

    .line 215
    .end local v1    # "result":I
    :cond_1
    nop

    .line 220
    :goto_1
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->hashCode:I

    return v0
.end method

.method public merge(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .locals 3
    .param p1, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 203
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 206
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 203
    :cond_1
    nop

    .line 206
    :goto_0
    const/4 v0, 0x1

    .line 203
    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 208
    .local v0, "mergedSchemeType":Ljava/lang/String;
    :goto_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    iget-object v2, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 209
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Util;->nullSafeArrayConcatenation([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 210
    .local v1, "mergedSchemeDatas":[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    new-instance v2, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-direct {v2, v0, v1}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 251
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDatas:[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 253
    return-void
.end method
