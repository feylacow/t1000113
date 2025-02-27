.class public final Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;
.super Lcom/google/android/exoplr2avp/upstream/BaseDataSource;
.source "RawResourceDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;
    }
.end annotation


# static fields
.field public static final RAW_RESOURCE_SCHEME:Ljava/lang/String; = "rawresource"


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private opened:Z

.field private final packageName:Ljava/lang/String;

.field private final resources:Landroid/content/res/Resources;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/upstream/BaseDataSource;-><init>(Z)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static buildRawResourceUri(I)Landroid/net/Uri;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawresource:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    .line 291
    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_0

    .line 292
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 298
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 300
    :try_start_1
    iget-object v3, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_1

    .line 301
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 308
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 309
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->opened:Z

    .line 310
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->transferEnded()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 304
    :try_start_2
    new-instance v4, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 308
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_3

    .line 309
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->opened:Z

    .line 310
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->transferEnded()V

    .line 312
    :cond_3
    throw v1

    :catchall_1
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    .line 295
    :try_start_3
    new-instance v4, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 298
    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 300
    :try_start_4
    iget-object v4, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4

    .line 301
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 307
    :cond_4
    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 308
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_5

    .line 309
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->opened:Z

    .line 310
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->transferEnded()V

    .line 313
    :cond_5
    throw v3

    :catchall_2
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v3

    .line 304
    :try_start_5
    new-instance v4, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 307
    :goto_2
    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 308
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_6

    .line 309
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->opened:Z

    .line 310
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->transferEnded()V

    .line 312
    :cond_6
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 117
    iget-object v2, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 118
    iput-object v2, v1, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    .line 121
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rawresource"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x7d5

    const/16 v5, 0x3ec

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_5

    .line 122
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v8, "android.resource"

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 124
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v9, "\\d+"

    invoke-virtual {v3, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 134
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "/"

    .line 135
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 139
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v5, ""

    goto :goto_0

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    iget-object v5, v1, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    iget-object v8, v1, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->packageName:Ljava/lang/String;

    const-string v9, "raw"

    .line 141
    invoke-virtual {v5, v3, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 144
    :cond_3
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string v2, "Resource not found."

    invoke-direct {v0, v2, v7, v4}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 150
    :cond_4
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string v2, "URI must either use scheme rawresource or android.resource"

    invoke-direct {v0, v2, v7, v5}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 126
    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 159
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->transferInitializing(Lcom/google/android/exoplr2avp/upstream/DataSpec;)V

    .line 163
    :try_start_1
    iget-object v5, v1, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 169
    iput-object v3, v1, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_10

    .line 177
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    .line 178
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 179
    iput-object v2, v1, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    const/16 v5, 0x7d8

    const-wide/16 v10, -0x1

    cmp-long v12, v8, v10

    if-eqz v12, :cond_7

    .line 188
    :try_start_2
    iget-wide v13, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->position:J

    cmp-long v15, v13, v8

    if-gtz v15, :cond_6

    goto :goto_3

    .line 190
    :cond_6
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v0, v7, v7, v5}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 195
    :cond_7
    :goto_3
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v13

    .line 196
    iget-wide v4, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->position:J

    add-long/2addr v4, v13

    .line 197
    invoke-virtual {v2, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v4

    sub-long/2addr v4, v13

    .line 199
    iget-wide v13, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->position:J

    cmp-long v16, v4, v13

    if-nez v16, :cond_f

    const-wide/16 v13, 0x0

    if-nez v12, :cond_a

    .line 210
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    cmp-long v8, v4, v13

    if-nez v8, :cond_8

    .line 212
    iput-wide v10, v1, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->bytesRemaining:J

    goto :goto_4

    .line 214
    :cond_8
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    sub-long/2addr v4, v8

    iput-wide v4, v1, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long v2, v4, v13

    if-ltz v2, :cond_9

    goto :goto_4

    .line 217
    :cond_9
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const/16 v2, 0x7d8

    invoke-direct {v0, v7, v7, v2}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :cond_a
    sub-long/2addr v8, v4

    .line 224
    iput-wide v8, v1, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->bytesRemaining:J
    :try_end_2
    .catch Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    cmp-long v2, v8, v13

    if-ltz v2, :cond_e

    .line 236
    :goto_4
    iget-wide v2, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->length:J

    cmp-long v4, v2, v10

    if-eqz v4, :cond_c

    .line 238
    iget-wide v2, v1, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long v4, v2, v10

    if-nez v4, :cond_b

    iget-wide v2, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->length:J

    goto :goto_5

    :cond_b
    iget-wide v4, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->length:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_5
    iput-wide v2, v1, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->bytesRemaining:J

    .line 240
    :cond_c
    iput-boolean v6, v1, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->opened:Z

    .line 241
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->transferStarted(Lcom/google/android/exoplr2avp/upstream/DataSpec;)V

    .line 242
    iget-wide v2, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->length:J

    cmp-long v4, v2, v10

    if-eqz v4, :cond_d

    iget-wide v2, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->length:J

    goto :goto_6

    :cond_d
    iget-wide v2, v1, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->bytesRemaining:J

    :goto_6
    return-wide v2

    .line 226
    :cond_e
    :try_start_3
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/DataSourceException;

    const/16 v2, 0x7d8

    invoke-direct {v0, v2}, Lcom/google/android/exoplr2avp/upstream/DataSourceException;-><init>(I)V

    throw v0

    .line 202
    :cond_f
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const/16 v2, 0x7d8

    invoke-direct {v0, v7, v7, v2}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
    :try_end_3
    .catch Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 232
    new-instance v2, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const/16 v3, 0x7d0

    invoke-direct {v2, v7, v0, v3}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    :catch_1
    move-exception v0

    .line 230
    throw v0

    .line 171
    :cond_10
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource is compressed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-direct {v0, v2, v7, v3}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :catch_2
    move-exception v0

    .line 165
    new-instance v2, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v2, v7, v0, v4}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 128
    :catch_3
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string v2, "Resource identifier must be an integer."

    invoke-direct {v0, v2, v7, v5}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 249
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    return v4

    :cond_1
    const/16 v2, 0x7d0

    const-wide/16 v5, -0x1

    cmp-long v3, v0, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v7, p3

    .line 256
    :try_start_0
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 257
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v4, :cond_4

    .line 264
    iget-wide p1, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long p3, p1, v5

    if-nez p3, :cond_3

    return v4

    .line 266
    :cond_3
    new-instance p1, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    const-string p3, "End of stream reached having not read sufficient data."

    invoke-direct {p1, p3, p2, v2}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 273
    :cond_4
    iget-wide p2, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long v0, p2, v5

    if-eqz v0, :cond_5

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 274
    iput-wide p2, p0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->bytesRemaining:J

    .line 276
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;->bytesTransferred(I)V

    return p1

    :catch_0
    move-exception p1

    .line 259
    new-instance p2, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, v2}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2
.end method
